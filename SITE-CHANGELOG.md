# Site-changelog — jipsamhoud.nl

> Werklaag-document. Elke aanpassing die via Claude Code (dus buiten Claude Design
> om) aan de live site wordt gedaan, komt hier als regel bij. Vóór een nieuwe
> design-sessie: plak de openstaande regels hieronder in de Claude Design-chat
> ("verwerk deze wijzigingen eerst"), of upload de actuele `index.html`. Zet
> verwerkte regels daarna onder "Verwerkt in Design".

## Nog niet verwerkt in Design

- 2026-07-21 — Career-sectie, &RANJ SERIOUS GAMES-entry: uitgebreide beschrijving. Nieuw: "Co-owner. Game Studio of the Year. A Rotterdam studio (est. 1999) developing serious games and gamification software in-house, combining game design, software engineering, behavioural science and AI. Twenty-five years of behaviour change through play, with 1M+ players worldwide, building for Johns Hopkins Institute, War Child, Zurich, Erasmus MC and Houthoff." ("Co-owner." als prefix behouden voor consistentie met andere career-entries.) NB: case card № 05 heeft nog de kortere &ranj-tekst (3 clients) — bewust niet meegewijzigd.

## Verwerkt in Design

- 2026-07-15 (v2) — Design zet de SEO/social meta-tags + JSON-LD nu ZELF in de statische `<head>` (en niet meer in het helmet-blok), met de korte `<title>` en de lange `og:title`/`twitter:title`. De handmatige head-dedup-stap bij deploy is niet meer nodig; controleer alleen nog dat er geen duplicaten zijn. Nieuwe work-tegel "ANWB Streetwise" toegevoegd.

- 2026-07-15 — Copy-fixes uit de review (25 years i.p.v. 30+ years op 2 plekken; 2018-timeline herschreven; telefoonnummer verwijderd) + semantische headings (1× h1, 6× h2).

- 2026-07-13 — Werkafspraak-commentaarblok staat bovenin de broncode.

- 2026-07-13 — Contact-sectie, zin onder "LET'S TALK.": "Building the next chapter from September 2026. Looking for what's next? Let's build and innovate together." (zat in de Design-export van 13-07).

## Infrastructuur (hoeft niet naar Design)

- 2026-07-15 — SEO: sitemap.xml en robots.txt (met sitemap-verwijzing) toegevoegd; JSON-LD Person-schema gekopieerd naar de statische head (stond alleen in het helmet-blok). Hoort bij de vaste head-tags-stap bij elke deploy.

- 2026-07-13 — Eerste deploy naar Cloudflare Worker `portfolio` via GitHub `jipsamhoud/portfolio`.
- 2026-07-13 — `.assetsignore` + `wrangler.jsonc` toegevoegd (houdt `.git` e.d. uit de publieke site).
- 2026-07-13 — www-CNAME + Worker-route, 301 www → root, Always Use HTTPS, workers.dev-URL's uit.
