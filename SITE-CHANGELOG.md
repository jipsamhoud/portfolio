# Site-changelog — jipsamhoud.nl

> Werklaag-document. Elke aanpassing die via Claude Code (dus buiten Claude Design
> om) aan de live site wordt gedaan, komt hier als regel bij. Vóór een nieuwe
> design-sessie: plak de openstaande regels hieronder in de Claude Design-chat
> ("verwerk deze wijzigingen eerst"), of upload de actuele `index.html`. Zet
> verwerkte regels daarna onder "Verwerkt in Design".

## Nog niet verwerkt in Design

- STRUCTUREEL — De `<title>` in de statische head is bewust kort: "Jip Samhoud — Brand Builder & Commercial Leader in Tech × AI" (~58 tekens, volledig zichtbaar in zoekresultaten). De lange brandingversie ("… · Pioneer in Creativity × Technology") blijft als `og:title` en `twitter:title` voor social cards. Bij elke deploy: `<title>` = korte versie, og/twitter-title = lange versie.
- STRUCTUREEL — SEO/social meta-tags (title, description, og:*, twitter:*, favicon, canonical) én JSON-LD Person-schema horen ALLEEN in de echte `<head>`, NIET in het helmet-blok. Nodig omdat WhatsApp/LinkedIn/AI-crawlers geen JS uitvoeren; én omdat support.js het helmet-blok bij runtime nogmaals in de head rendert (staan de tags op beide plekken, dan ziet een crawler ze dubbel — Bing Site Scan flagde dit op 15-07). Design-exports zetten deze tags nog in het helmet-blok; bij elke deploy dus: (a) tags in de statische head zetten, (b) dezelfde tags uit het helmet-blok verwijderen (fonts + `<style>` in helmet laten staan). Blijft hier tot Design ze zelf direct in de head zet.

## Verwerkt in Design

- 2026-07-15 — Copy-fixes uit de review (25 years i.p.v. 30+ years op 2 plekken; 2018-timeline herschreven; telefoonnummer verwijderd) zitten allemaal in de export van 15-07. Ook nieuw: Design heeft semantische headings toegevoegd (1× h1, 6× h2) voor SEO.

- 2026-07-13 — Werkafspraak-commentaarblok staat sinds de export van 13-07 bovenin de broncode. Meta-tags-in-statische-head voert Design nog niet uit; die worden per deploy door Claude Code toegevoegd.

- 2026-07-13 — Contact-sectie, zin onder "LET'S TALK.": "Building the next chapter from September 2026. Looking for what's next? Let's build and innovate together." (zat in de Design-export van 13-07).

## Infrastructuur (hoeft niet naar Design)

- 2026-07-15 — SEO: sitemap.xml en robots.txt (met sitemap-verwijzing) toegevoegd; JSON-LD Person-schema gekopieerd naar de statische head (stond alleen in het helmet-blok). Hoort bij de vaste head-tags-stap bij elke deploy.

- 2026-07-13 — Eerste deploy naar Cloudflare Worker `portfolio` via GitHub `jipsamhoud/portfolio`.
- 2026-07-13 — `.assetsignore` + `wrangler.jsonc` toegevoegd (houdt `.git` e.d. uit de publieke site).
- 2026-07-13 — www-CNAME + Worker-route, 301 www → root, Always Use HTTPS, workers.dev-URL's uit.
