# AIUB Portal+

Fast, modern app-style UI for the [AIUB Student Portal](https://portal.aiub.edu) on phone and PC. Your data never leaves your browser.

**[Install the userscript](https://raw.githubusercontent.com/amitsami/aiub-portal-plus/main/userscript/AIUB-Portal-Plus.user.js)** · **[Download the latest release](https://github.com/amitsami/aiub-portal-plus/releases/latest)** · **[Install guide](docs/INSTALL.md)**

## Which file should I download?

| Your device | Download this | How to use it |
| --- | --- | --- |
| **Android phone** | [AIUB-Portal-Plus.user.js](https://raw.githubusercontent.com/amitsami/aiub-portal-plus/main/userscript/AIUB-Portal-Plus.user.js) (just open the link) | 1. Install **Firefox** from the Play Store.<br>2. Firefox -> Menu -> **Add-ons** -> install **Tampermonkey**.<br>3. Open the userscript link in Firefox -> tap **Install**.<br>4. Go to portal.aiub.edu and sign in. |
| **iPhone / iPad** | [AIUB-Portal-Plus.user.js](https://raw.githubusercontent.com/amitsami/aiub-portal-plus/main/userscript/AIUB-Portal-Plus.user.js) | 1. Install the free **Userscripts** app from the App Store.<br>2. Settings -> Safari -> Extensions -> turn on **Userscripts** and allow portal.aiub.edu.<br>3. Open the userscript link in Safari -> tap the Userscripts icon -> **Install**.<br>4. Go to portal.aiub.edu. |
| **PC (easiest, auto-updates)** | [AIUB-Portal-Plus.user.js](https://raw.githubusercontent.com/amitsami/aiub-portal-plus/main/userscript/AIUB-Portal-Plus.user.js) (just open the link) | 1. Install **Tampermonkey** from your browser's extension store (Chrome, Edge, Brave, Firefox, Opera).<br>2. Chrome / Edge: turn on **Developer mode** on the extensions page (Tampermonkey needs it).<br>3. Open the userscript link -> click **Install**.<br>4. Go to portal.aiub.edu. |
| **PC (no Tampermonkey)** | [AIUB-Portal-Plus-extension.zip](https://github.com/amitsami/aiub-portal-plus/releases/latest/download/AIUB-Portal-Plus-extension.zip) | 1. Download and **extract** (unzip) the file.<br>2. Open `chrome://extensions` (or `edge://extensions`, `brave://extensions`).<br>3. Turn on **Developer mode** -> **Load unpacked** -> choose the extracted folder.<br>4. Go to portal.aiub.edu. Do not delete the folder afterwards. |
| **Tampermonkey backup import** (any device) | [AIUB-Portal-Plus-Tampermonkey.zip](https://github.com/amitsami/aiub-portal-plus/releases/latest/download/AIUB-Portal-Plus-Tampermonkey.zip) | Tampermonkey -> **Dashboard** -> **Utilities** -> **Import from file** -> choose the zip -> **Install**. Use this only if the link install does not work. |

> `schema.sql` is only for the developer (review server database). Students do not need it.

**Updates:** the userscript updates itself through Tampermonkey. The extension zip does not update itself; download the new zip from [Releases](https://github.com/amitsami/aiub-portal-plus/releases) and click **Reload** on the extensions page.

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
