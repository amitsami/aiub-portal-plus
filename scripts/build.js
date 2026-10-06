#!/usr/bin/env node
/*
 * AIUB Portal+ build script
 * Generates userscript/AIUB-Portal-Plus.user.js from the extension/ sources:
 *   header (from manifest.json) + CSS (theme.css, shell.css, glass.css) + app.js + shell.js
 * Usage: node scripts/build.js
 */
"use strict";
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const ext = (f) => fs.readFileSync(path.join(root, "extension", f), "utf8");
const manifest = JSON.parse(ext("manifest.json"));
const RAW = "https://raw.githubusercontent.com/amitsami/aiub-portal-plus/main/userscript/AIUB-Portal-Plus.user.js";

const header = [
  "// ==UserScript==",
  "// @name         " + manifest.name,
  "// @namespace    aiub-portal-plus",
  "// @version      " + manifest.version,
  "// @description  " + manifest.description,
  "// @author       amitsami",
  "// @homepageURL  https://github.com/amitsami/aiub-portal-plus",
  "// @supportURL   https://github.com/amitsami/aiub-portal-plus/issues",
  "// @updateURL    " + RAW,
  "// @downloadURL  " + RAW,
  "// @match        https://portal.aiub.edu/*",
  "// @run-at       document-start",
  "// @grant        GM_xmlhttpRequest",
  "// @grant        GM.xmlHttpRequest",
  "// @connect      www.aiub.edu",
  "// @connect      api.open-meteo.com",
  "// ==/UserScript==",
].join("\n");

const css = ["theme.css", "shell.css", "glass.css"].map(ext).join("\n");
const style =
  '(function(){var s=document.createElement("style");s.id="ap-css";s.textContent=' +
  JSON.stringify(css) +
  ";(document.head||document.documentElement).appendChild(s);})();";

const out = [header, style, ext("app.js"), ext("shell.js")].join("\n");
const dest = path.join(root, "userscript", "AIUB-Portal-Plus.user.js");
fs.writeFileSync(dest, out);
console.log("Built " + path.relative(root, dest) + " (v" + manifest.version + ", " + Buffer.byteLength(out) + " bytes)");
