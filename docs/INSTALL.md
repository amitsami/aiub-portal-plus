# Install AIUB Portal+

AIUB Portal+ works on phone and PC. Pick one option.

## Quick links

| What | Link |
| --- | --- |
| Userscript (one-click install with Tampermonkey) | [AIUB-Portal-Plus.user.js](https://raw.githubusercontent.com/amitsami/aiub-portal-plus/main/userscript/AIUB-Portal-Plus.user.js) |
| Browser extension (PC) | [AIUB-Portal-Plus-extension.zip](https://github.com/amitsami/aiub-portal-plus/releases/latest/download/AIUB-Portal-Plus-extension.zip) |
| Tampermonkey zip (phone / backup import) | [AIUB-Portal-Plus-Tampermonkey.zip](https://github.com/amitsami/aiub-portal-plus/releases/latest/download/AIUB-Portal-Plus-Tampermonkey.zip) |
| All releases | [Releases](https://github.com/amitsami/aiub-portal-plus/releases) |

## Phone (Android)

1. Install **Firefox** from the Play Store.
2. In Firefox open **Menu -> Add-ons**, install **Tampermonkey**.
3. Open the userscript link: [AIUB-Portal-Plus.user.js](https://raw.githubusercontent.com/amitsami/aiub-portal-plus/main/userscript/AIUB-Portal-Plus.user.js) and tap **Install**.
4. Open https://portal.aiub.edu and sign in.

Updates are installed automatically by Tampermonkey.

## Phone (iPhone / iPad)

1. Install the free **Userscripts** app from the App Store and enable it in **Settings -> Safari -> Extensions**.
2. Open the userscript link in Safari: [AIUB-Portal-Plus.user.js](https://raw.githubusercontent.com/amitsami/aiub-portal-plus/main/userscript/AIUB-Portal-Plus.user.js) and add it with the Userscripts extension.
3. Open https://portal.aiub.edu.

## PC - Tampermonkey (recommended, auto-updates)

1. Install **Tampermonkey** for Chrome, Edge, Brave, Firefox or Opera.
2. Chrome / Edge: open the extensions page and turn on **Developer mode** (required by Tampermonkey for userscripts) or allow **User scripts** in Tampermonkey's details page.
3. Open [AIUB-Portal-Plus.user.js](https://raw.githubusercontent.com/amitsami/aiub-portal-plus/main/userscript/AIUB-Portal-Plus.user.js) and click **Install**.

## PC - Browser extension

1. Download [AIUB-Portal-Plus-extension.zip](https://github.com/amitsami/aiub-portal-plus/releases/latest/download/AIUB-Portal-Plus-extension.zip) and extract it.
2. Open `chrome://extensions` (or `edge://extensions`, `brave://extensions`).
3. Turn on **Developer mode** -> **Load unpacked** -> choose the extracted folder.

Firefox: open `about:debugging#/runtime/this-firefox` -> **Load Temporary Add-on** -> choose `manifest.json` (temporary until restart). For permanent use on Firefox, use Tampermonkey.

## Tampermonkey zip import

Tampermonkey -> **Dashboard -> Utilities -> Import from file** -> choose `AIUB-Portal-Plus-Tampermonkey.zip` -> **Install**.

## Privacy

Your portal data never leaves your browser. Only anonymous faculty reviews (faculty, course, semester, stars, comment and a one-way scrambled code) are sent to the review server. Your name and student ID are never sent.
