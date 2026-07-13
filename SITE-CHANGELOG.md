# Site-changelog — jipsamhoud.nl

> Werklaag-document. Elke aanpassing die via Claude Code (dus buiten Claude Design
> om) aan de live site wordt gedaan, komt hier als regel bij. Vóór een nieuwe
> design-sessie: plak de openstaande regels hieronder in de Claude Design-chat
> ("verwerk deze wijzigingen eerst"), of upload de actuele `index.html`. Zet
> verwerkte regels daarna onder "Verwerkt in Design".

## Nog niet verwerkt in Design

- 2026-07-13 — Career-sectie &ranj: "30+ years" → "25 years"; case card № 05: "a 30+ year studio" → "a 25-year studio" (zelfde feitelijke correctie).
- 2026-07-13 — Timeline-kaart "2018 — GAMING": beschrijving herschreven naar "Behaviour change through play — co-owner of &ranj, Game Studio of the Year, building for Johns Hopkins, War Child and Zurich." (verwijzing naar kids' banking/loyalty weggehaald — die horen bij de 2013-golf; loste schijnbare datumtegenstrijdigheid met case card № 05 op).
- 2026-07-13 — Telefoonnummer-tegel verwijderd uit de contact-sectie (privacy/scraping); alleen e-mail en LinkedIn blijven.

- STRUCTUREEL — Statische meta-tags (title, description, og:*, twitter:*, favicon, canonical) in de echte `<head>` van index.html. Nodig omdat WhatsApp/LinkedIn-crawlers geen JavaScript uitvoeren en de helmet-tags dus niet zien. Design-exports leveren een kale head; deze tags worden bij elke deploy opnieuw toegevoegd (gekopieerd uit het helmet-blok van de export). Blijft hier staan tot Design ze zelf in de head zet.

## Verwerkt in Design

- 2026-07-13 — Werkafspraak-commentaarblok staat sinds de export van 13-07 ("Personal animation project") bovenin de broncode. Punt 2 (meta-tags in statische head) voert Design nog niet uit; head-tags worden dus nog per deploy door Claude Code toegevoegd.

- 2026-07-13 — Contact-sectie, zin onder "LET'S TALK.": "Building the next chapter from September 2026. Looking for what's next? Let's build and innovate together." (zat in de Design-export van 13-07).

## Infrastructuur (hoeft niet naar Design)

- 2026-07-13 — Eerste deploy naar Cloudflare Worker `portfolio` via GitHub `jipsamhoud/portfolio`.
- 2026-07-13 — `.assetsignore` + `wrangler.jsonc` toegevoegd (houdt `.git` e.d. uit de publieke site).
- 2026-07-13 — www-CNAME + Worker-route, 301 www → root, Always Use HTTPS, workers.dev-URL's uit.
