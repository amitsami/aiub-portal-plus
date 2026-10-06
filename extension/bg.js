/* AIUB Portal+ background helper: reads PUBLIC pages from www.aiub.edu (notices, faculty list) and campus weather (Open-Meteo) for the portal tab.
   Only www.aiub.edu and api.open-meteo.com are allowed. No cookies, nothing stored, nothing sent elsewhere. */
var api = typeof browser !== "undefined" ? browser : chrome;
api.runtime.onMessage.addListener(function (msg, sender, reply) {
  if (!msg || msg.t !== "xget" || typeof msg.url !== "string" || (msg.url.indexOf("https://www.aiub.edu/") !== 0 && msg.url.indexOf("https://api.open-meteo.com/") !== 0)) return;
  fetch(msg.url, { credentials: "omit", cache: "no-store" })
    .then(function (r) { if (!r.ok) throw new Error("HTTP " + r.status); return r.text(); })
    .then(function (text) { reply({ text: text }); }, function (e) { reply({ err: String(e && e.message || e) }); });
  return true;
});
