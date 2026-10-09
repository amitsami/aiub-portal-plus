# AIUB Portal+ — Privacy Policy

_Last updated: October 2026_

AIUB Portal+ is an unofficial, student-made extension / userscript that gives the AIUB Student Portal
(`https://portal.aiub.edu`) a modern design. It is not made by or affiliated with American International University-Bangladesh.

## What stays on your device
- Everything the portal shows you (name, student ID, courses, grades, CGPA, payments, schedule) is read
  **only inside your own browser** to build the new design. It is **never sent** to the developer or any other server.
- Settings and cached portal pages are saved in your browser's local storage on your device only.
- Your portal password is never read or stored.

## What is sent over the internet
| Where | What | Why |
|---|---|---|
| `portal.aiub.edu` | Normal portal page requests, with your own login | To show your portal data |
| `www.aiub.edu` | Public pages only (notices, public faculty list and photos), no cookies | Notices and faculty photos |
| `api.open-meteo.com` | The fixed campus location (Kuratoli, Dhaka) | Campus weather |
| `raw.githubusercontent.com` | Nothing personal (downloads `update.json`) | Checks for a new version |
| Faculty review server (Supabase) | **Only when you choose to submit a faculty review:** faculty name/email, course, semester, stars, your comment and a one-way scrambled code | Anonymous faculty reviews |

The scrambled code is a SHA-256 hash, so the same student can edit or remove their own review.
Your name and student ID are **never sent** and reviews are shown to others without any identity.
Reading reviews sends nothing about you.

## No tracking
No analytics, no ads, no trackers, no selling or sharing of data.

## Removing data
- Uninstall the extension / userscript, or clear the site data of `portal.aiub.edu`, to remove everything stored on your device.
- Use **Remove** on a review in **Faculty review → Give review** to delete it from the review server.

## Contact
Questions or requests: https://github.com/amitsami/aiub-portal-plus/issues
