# Site-changelog — jipsamhoud.nl

> Werklaag-document. Elke aanpassing die via Claude Code (dus buiten Claude Design
> om) aan de live site wordt gedaan, komt hier als regel bij. Vóór een nieuwe
> design-sessie: plak de openstaande regels hieronder in de Claude Design-chat
> ("verwerk deze wijzigingen eerst"), of upload de actuele `index.html`. Zet
> verwerkte regels daarna onder "Verwerkt in Design".

## Nog niet verwerkt in Design

- 2026-07-13 — Statische meta-tags (title, description, og:*, twitter:*, favicon, canonical) toegevoegd aan de echte `<head>` van index.html, gekopieerd uit het helmet-blok. Nodig omdat WhatsApp/LinkedIn-crawlers geen JavaScript uitvoeren en de helmet-tags dus niet zien. Bij een nieuwe Design-export moeten deze head-tags opnieuw toegevoegd worden (of in Design zelf geregeld).
- 2026-07-13 — Contact-sectie, zin onder "LET'S TALK.": was "Building the next chapter from September 2026. If you have a big problem that needs something that doesn't exist yet — let's build and innovate together." → nu "Building the next chapter from September 2026. Looking for what's next? Let's build and innovate together."

## Verwerkt in Design

*(nog leeg)*

## Infrastructuur (hoeft niet naar Design)

- 2026-07-13 — Eerste deploy naar Cloudflare Worker `portfolio` via GitHub `jipsamhoud/portfolio`.
- 2026-07-13 — `.assetsignore` + `wrangler.jsonc` toegevoegd (houdt `.git` e.d. uit de publieke site).
- 2026-07-13 — www-CNAME + Worker-route, 301 www → root, Always Use HTTPS, workers.dev-URL's uit.
