-- StudentDesk AIUB — Faculty review server (Supabase, free plan)
-- Supabase dashboard -> SQL Editor -> New query -> paste ALL of this -> Run.
-- Students never touch the table directly: they can only READ the public view
-- and call the 4 functions below. No names / student IDs are stored.

create table if not exists public.reviews (
  id          bigint generated always as identity primary key,
  rid         text not null unique,              -- one-way scrambled code (SHA-256), one review per student+faculty+course+semester
  fac_email   text not null,
  fac_name    text not null,
  course      text not null,
  semester    text not null,
  stars       smallint not null check (stars between 1 and 5),
  comment     text check (char_length(comment) <= 500),
  reports     int not null default 0,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now()
);
create index if not exists reviews_updated_idx on public.reviews (updated_at desc);
create index if not exists reviews_fac_idx on public.reviews (fac_email);

alter table public.reviews enable row level security;     -- no policies = no direct access
revoke all on public.reviews from anon, authenticated;

-- what everybody can see (no rid, no report count; hidden after 3 reports)
create or replace view public.reviews_public as
  select id, fac_email, fac_name, course, semester, stars, comment, created_at, updated_at
  from public.reviews where reports < 3;
grant select on public.reviews_public to anon, authenticated;

create or replace function public.submit_review(p_rid text, p_email text, p_name text, p_course text, p_sem text, p_stars int, p_comment text)
returns void language plpgsql security definer set search_path = public as $$
begin
  if p_rid !~ '^[0-9a-f]{64}$' then raise exception 'bad code'; end if;
  if p_email !~* '^[a-z0-9._-]+@aiub\.edu$' and p_email !~ '^name:[a-z0-9]+$' then raise exception 'bad faculty'; end if;
  if p_stars < 1 or p_stars > 5 then raise exception 'stars must be 1-5'; end if;
  if char_length(p_name) > 120 or char_length(p_course) > 160 or char_length(p_sem) > 40 then raise exception 'too long'; end if;
  insert into public.reviews (rid, fac_email, fac_name, course, semester, stars, comment)
  values (p_rid, lower(p_email), p_name, p_course, p_sem, p_stars, nullif(left(trim(coalesce(p_comment, '')), 500), ''))
  on conflict (rid) do update set stars = excluded.stars, comment = excluded.comment, fac_name = excluded.fac_name, updated_at = now();
end $$;

create or replace function public.delete_review(p_rid text)
returns void language sql security definer set search_path = public as $$
  delete from public.reviews where rid = p_rid;
$$;

create or replace function public.report_review(p_id bigint)
returns void language sql security definer set search_path = public as $$
  update public.reviews set reports = reports + 1 where id = p_id;
$$;

revoke all on function public.submit_review(text, text, text, text, text, int, text) from public;
revoke all on function public.delete_review(text) from public;
revoke all on function public.report_review(bigint) from public;
grant execute on function public.submit_review(text, text, text, text, text, int, text) to anon, authenticated;
grant execute on function public.delete_review(text) to anon, authenticated;
grant execute on function public.report_review(bigint) to anon, authenticated;

-- Moderation (run yourself in SQL Editor when needed):
--   select * from reviews order by reports desc, created_at desc;
--   delete from reviews where id = 123;
--   update reviews set reports = 0 where id = 123;   -- un-hide
