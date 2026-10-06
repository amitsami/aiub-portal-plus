# AIUB Portal+

Fast, modern app-style UI for the [AIUB Student Portal](https://portal.aiub.edu) on phone and PC. Your data never leaves your browser.

**[Install the userscript](https://raw.githubusercontent.com/amitsami/aiub-portal-plus/main/userscript/AIUB-Portal-Plus.user.js)** · **[Download the latest release](https://github.com/amitsami/aiub-portal-plus/releases/latest)** · **[Install guide](docs/INSTALL.md)**

## Features

- App-style home with greeting, quick actions, class routine, grades, payments and mail
- Liquid Glass theme with light / dark mode and custom accent colors
- Phone layout with a bottom tab bar, PC layout with a sidebar
- Red update dots for new notices, notifications, grades, courses, routine and mail
- Exam routine detection with countdown
- Live campus weather for AIUB
- Faculty list with photos, rooms and emails
- Anonymous faculty reviews (1-5 stars + comment), shared between all Portal+ users
- Fast loading with smart background caching

## Privacy

- Portal+ only changes how the portal looks in your browser. All data comes directly from portal.aiub.edu.
- Cached data stays on your device and is cleared when you sign out.
- Faculty reviews are anonymous: your name and student ID are never sent.

## Faculty review server

Faculty reviews are connected to the project's review server, kept online by a GitHub Actions workflow. Nothing needs to be set up by users. The database schema is in [`server/schema.sql`](server/schema.sql).

## Project structure

| Path | Contents |
| --- | --- |
| `extension/` | Browser extension (Manifest V3) |
| `userscript/` | Generated Tampermonkey userscript |
| `server/schema.sql` | Review server database schema |
| `scripts/build.js` | Builds the userscript from the extension sources |
| `docs/INSTALL.md` | Install guide |

## Build

```bash
node scripts/build.js
node --check userscript/AIUB-Portal-Plus.user.js
```

## Author

Amit Hasan Sami ([@amitsami](https://github.com/amitsami))

AIUB Portal+ is an unofficial student project and is not affiliated with American International University-Bangladesh.
