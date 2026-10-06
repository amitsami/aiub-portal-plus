# Install AIUB Portal+

AIUB Portal+ works on phone and PC. Pick one option.

## Quick links

| What | Link |
| --- | --- |
| Userscript (one-click install with Tampermonkey) | [AIUB-Portal-Plus.user.js](https://raw.githubusercontent.com/amitsami/aiub-portal-plus/main/userscript/AIUB-Portal-Plus.user.js) |
| Browser extension (PC) | [AIUB-Portal-Plus-extension.zip](https://github.com/amitsami/aiub-portal-plus/releases/latest/download/AIUB-Portal-Plus-extension.zip) |
| Tampermonkey zip (phone / backup import) | [AIUB-Portal-Plus-Tampermonkey.zip](https://github.com/amitsami/aiub-portal-plus/releases/latest/download/AIUB-Portal-Plus-Tampermonkey.zip) |
| All releases | [Releases](https://github.com/amitsami/aiub-portal-plus/releases) |

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
