StudentDesk AIUB v3.8 — Modern app UI for portal.aiub.edu
=====================================================
StudentDesk only changes how the portal looks and feels in YOUR browser.
All data comes directly from portal.aiub.edu. Nothing is sent anywhere.
Cached portal data is stored on this device only and is cleared when you sign out.

WHAT'S NEW IN 3.8
- Go to Registration shows "Open now" only when the portal's registration page
  really shows the Next and Cancel buttons. Otherwise it shows "Done" (registration
  completed) or "Closed".
- Faculty review button moved into the greeting box on Home.
- Registration status and reviews load in the background without slowing scrolling.
- Supports both Supabase key types (legacy anon key and new publishable key).
- Code comments are English only.

WHAT'S NEW IN 3.7
- Faculty review (Home -> "Faculty review", also in More / sidebar):
  * Give review: every faculty you took a course with — running AND completed,
    semester by semester (read from your own portal: course list -> section ->
    course teacher). 1-5 stars + optional comment, Submit, edit or remove any time.
  * All reviews: everyone's reviews with faculty photo + name, stars, course,
    semester, comment. Search, By faculty (average rating), Top rated, With comments.
    Updates live every 20 s; your own review appears instantly after Submit.
  * Anonymous: your name / student ID are never shown or sent. Only a one-way
    scrambled code is sent so one student = one review per faculty+course+semester.
    Abusive reviews can be reported (hidden after 3 reports).
- Speed: faster first load, background loading paced so it never blocks scrolling.

FACULTY REVIEW SERVER SETUP (developer, one time, free)
  Reviews must be stored somewhere shared so everyone can see them. StudentDesk uses a
  free Supabase project:
  1. supabase.com -> sign in (GitHub is fine) -> New project (any name, region:
     Singapore). Wait ~2 minutes.
  2. SQL Editor -> New query -> paste ALL of server/schema.sql -> Run.
  3. Project Settings -> API: copy "Project URL" and the "anon public" key.
  4. Either paste both in StudentDesk -> Settings -> Faculty review server (this device
     only), or put them in shell.js:  var RV_DEF = { url: "...", key: "..." };
     and rebuild, so every user of your copy is connected automatically.
  The anon key is meant to be public; students can only read the public view and
  call the 3 review functions — they cannot read or change the table directly.
  Moderate in SQL Editor: select * from reviews order by reports desc;

WHAT'S NEW IN 3.6
- Speed pass: background loading now waits until you stop touching/scrolling,
  the portal's own heavy scroll script is blocked, links open instantly (no fade
  delay), phones get flatter rendering (no shadows/transitions/blur), badges paint
  after the page is shown.
- Developer info card in More (Amit Hasan Sami, email, GitHub).
- Removed the "Made with love" footer.
- Bug fixes: "Good noon" -> "Good afternoon", red dots no longer show on courses
  you have not taken, text fixes, smoother resize handling.

WHAT'S NEW IN 3.5
- Exam routine: before every term exam the portal publishes the routine — StudentDesk
  checks for it automatically and shows it on Home ("Exam routine is out") and in
  Class Routine -> Exams, with a countdown and a red dot when it appears.
- Live campus weather on Home for AIUB (Kuratoli, Dhaka): temperature, feels like,
  humidity, wind, rain chance, next 6 hours, and a tip (umbrella / carry water).
  Data from Open-Meteo (free, no account). Refreshes every 10 minutes.
- Faculty list (More -> Faculty list): every AIUB faculty from aiub.edu with photo,
  position, department, room, email and profile link; search and filter by faculty.
- Tab bar / sidebar switch on finger-down (lower latency); more data preloaded.
(The extension may ask permission for www.aiub.edu and api.open-meteo.com.)

WHAT'S NEW IN 3.4
- Much smoother on phones: no live blur while scrolling (the top bar uses a frosted
  fill instead), no per-item animations, Firefox gets its own light rendering path
- "Go to Registration" now finds the portal's own red Registration button while
  registration is open and takes you straight to it (button turns red, "Open now").
  When registration is closed it opens the normal Registration page.
- Notifications list loads 30 at a time (Show more)

WHAT'S NEW IN 3.3
- AIUB logo in the sidebar (PC) and the top bar (phone)
- "Go to Registration" button on Home
- Notifications: your portal notifications (bell button + own page), tap to open
- Red update dots: a number on Notices, Notifications, Grades, Courses, Routine,
  Financials and Mail when something new arrives, and a red dot on the exact item
  inside the page. (The first run only remembers what is already there.)
- Top bar turns into frosted glass when you scroll (PC and phone)
- Quick actions are now unique (no copies of the tab bar / sidebar):
  Free time, Week view, Offered for me, CGPA calculator, Outlook, Drop course, ...
- Faster: data starts loading the moment you touch a tab, long pages draw only
  what is on screen

WHAT'S NEW IN 3.2
- Notices: every official notice from aiub.edu inside the app — read the full
  notice, search, load older notices, "New" badge, latest notices on Home
  (The extension may ask permission to read www.aiub.edu — that is only for notices.)

WHAT'S NEW IN 3.1
- Clean off-white light mode by default (dark mode in Settings)
- Minimal Home: greeting, next-class countdown, quick actions, today and coming up
- Settings on Home (quick action + gear button on phone)
- Much faster: pages open instantly after the first visit, data refreshes quietly in the background
- Smooth native scrolling on phones, lighter effects, 60 fps
- Whole interface in English

FEATURES
- Home, Class Routine (day / week / free time), Courses (completed / running /
  remaining / offered for me / all offered / electives), Grades & CGPA (trend,
  distribution, what-if calculator), Financials, Mail (portal mail + Outlook),
  More (all portal pages), Settings
- Quick search: search button, Ctrl+K or "/"
- Phone: swipe left/right to switch tabs
- Settings: Light / Dark / Auto, accent colour, background, animations, start page.
  Turn off "StudentDesk App layout" to go back to the original portal layout.

INSTALL
Remove any older version first.

Chrome / Edge / Brave (PC)
 1. Extract AIUB-Portal-Plus-extension.zip
 2. Open chrome://extensions (edge://extensions, brave://extensions)
 3. Turn on Developer mode -> Load unpacked -> choose the extracted folder

Firefox (PC or Android) with Tampermonkey
 - Tampermonkey -> Dashboard -> Utilities -> Import from file ->
   choose AIUB-Portal-Plus-Tampermonkey.zip -> Install
 - Or create a new script and paste the code from AIUB-Portal-Plus-code.txt

iPhone / iPad
 - Install the "Userscripts" app, enable it in Safari, and add the .user.js file.

NOTE
The login math captcha is a security check, so it is not auto-solved.
