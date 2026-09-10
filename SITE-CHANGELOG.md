# Site-changelog — jipsamhoud.nl

> Werklaag-document. Elke aanpassing die via Claude Code (dus buiten Claude Design
> om) aan de live site wordt gedaan, komt hier als regel bij. Vóór een nieuwe
> design-sessie: plak de openstaande regels hieronder in de Claude Design-chat
> ("verwerk deze wijzigingen eerst"), of upload de actuele `index.html`. Zet
> verwerkte regels daarna onder "Verwerkt in Design".

## Nog niet verwerkt in Design

*(geen openstaande punten — export v9 van 10-09 heeft alles verwerkt)*

## Infrastructuur — LET OP bij Design (raakt index.html niet, maar wel de site)

- **CAMPAGNELINKS `/r1`, `/r2`, …** (31-08). `wrangler.jsonc` staat op `not_found_handling: "single-page-application"`, zodat een onbekend pad dezelfde pagina serveert. Daardoor kan Jip per verstuurde link een eigen URL gebruiken (`jipsamhoud.nl/r7`) en in Cloudflare Web Analytics onder Visits → Path zien of er geklikt is.
  - **ALTIJD één padsegment**: `/r7`, NOOIT `/r/7`. index.html laadt `support.js` en `assets/` met relatieve paden; bij `/r/7` vraagt de browser `/r/support.js` op, krijgt HTML terug, en dan draait de render-runtime niet — de pagina toont dan ruwe opmaak (video-overlay open, gebroken afbeeldingen).
  - Dit is exact één keer misgegaan en meteen gecorrigeerd; `wrangler.jsonc` bevat een waarschuwing.
  - `robots.txt` bevat `Disallow: /r` zodat campagne-URL's niet in zoekmachines komen; de canonical op die pagina's wijst naar `https://jipsamhoud.nl/`.
- **Cloudflare Web Analytics RUM** (31-08) staat van "Enable, excluding visitor data in the EU" op **"Enable"**. Zonder die wijziging werd er voor EU-bezoekers géén meetcode geladen en was vrijwel al het verkeer onzichtbaar. Cookieloos, geen banner nodig.

## Verwerkt in Design

- 2026-09-10 (export v9) — Positioneringsronde "wat kom je brengen". Nieuwe hero-quote: "I build concepts, companies and innovations that inspire and connect millions of people, and move society forward." met Adformatie-attributieregel (2020) eronder. Nieuwe sectie **WHAT I BRING** (nav-item PROFILE → #bring) met vier tegels: Builder ("Three months, not two years."), Connector ("A network that opens doors."), Inspirator ("I can sell an idea."), Anchor ("Rots in de branding"). Verder: P&L expliciet (Builder + Story), VR Cinema nu "20 locations in 10 countries" (was 15+), Let's Copilot "100K+ users worldwide", stats-tegel "AGENCY BUILT & SOLD" → "DIGITAL AGENCY BUILT", "3BN GLOBAL MEDIA REACH", ticker "WORK IN 10+ COUNTRIES", e-mail jip@samhoud.nl → **jip@samhoud.com** (mailto, zichtbaar, JSON-LD, werkafspraak punt 6). llms.txt door Claude Code bijgewerkt met hero-quote, capabilities, VR-cijfers, P&L en nieuw e-mailadres. NB Claude Code: nieuwe cijfers (20 locaties/10 landen) zijn niet extern verifieerbaar — aangeleverd door Jip via Design.
- 2026-08-31 — Beschikbaarheid: hero-badge "AVAILABLE NOW", contact "Building the next chapter, starting now." (verwerkt in export v9).

- 2026-08-31 (export v8) — Alle openstaande punten verwerkt: de drie head-/a11y-regels (`lang`, `author`, `noopener`) staan nu vast in de export, de tickerregel is overgenomen, Beyond Business heeft een eigen achtergrondtint + dubbele topline, en de og-card gebruikt middenpunten. Daarbovenop zelf opgepakt: **CLS-fix** (fonts vroeg uit de statische head, `display=optional`, vaste navigatiehoogte van 48px) en een hero-badge.

### 2026-07-21 — Positioneringsronde (site als sollicitatie-instrument) — VERWERKT in export 21-07
Doel: de lezer is een senior executive die 20 seconden kijkt. Rode draad: "nieuwe technologie omzetten in iets dat miljoenen mensen daadwerkelijk gebruiken."

- **Verkoopjaar 2024.** Story-regel `&SAMHOUD CREATIVE TECH` staat nu op `2013–2024`, beschrijving eindigt op "Sold 2024." De regel `2023–NOW · &SAMHOUD` blijft ongewijzigd (overlap is correct). Casekaarten № 01 en № 04 houden bewust `2013–2023` — dat is de looptijd van het wérk, niet van het eigenaarschap.
- **Hero rechterkaart.** Label: `AMSTERDAM · AVAILABLE FROM SEPTEMBER 2026`. Body: "Founder & CEO of a 40-FTE digital agency, built and sold." + "Co-owner &ranj · Co-founder Let's Copilot". NB: "Co-owner &samhoud" is hier bewust weggehaald (leest als adviseur); staat nog wel in The Story.
- **Ticker.** `CO-OWNER &SAMHOUD` → `FOUNDER & CEO · BUILT AND SOLD`. Rest ongewijzigd.
- **Statistiekenbalk.** Tegel `€2.2M / RECORD FUNDRAISING, D66 2025` → `40+ FTE / AGENCY BUILT & SOLD` (politiek cijfer hoort niet tussen commercieel bewijs). Het D66-cijfer blijft staan in Public Leadership. Label `APP DOWNLOADS` → `APP DOWNLOADS ACROSS ALL VENTURES`; &ranj-tekst: "1M+ players worldwide across &ranj titles" (twee schaalgetallen expliciet uit elkaar).
- **Hero-quote.** "…I build brands and ventures that *move society forward*." → "…I turn new technology into *things people actually use*." (resultaat i.p.v. intentie).
- **"Intersection" volledig geschrapt** (meta description + contactblok + llms.txt) — die formulering zegt letterlijk dat hij tussen categorieën in valt.
- **Contactblok.** `OPEN TO EXECUTIVE ROLES AT THE INTERSECTION OF…` → `OPEN TO CHIEF AI OFFICER · CMO · CHIEF DIGITAL OFFICER · GENERAL MANAGER`. Volgorde door Jip gekozen (Chief AI Officer voorop).
- **Scharnierregel boven de cases.** Nieuw, direct onder de kop SELECTED WORK: "Six ventures, one pattern: a new technology, a brand built on top of it, and millions of people who *actually used it*."
- **Slogan "Technology does not win. Adoption does." overal verwijderd** (wave-kaart AI + casekaart № 03 + llms.txt). "AI adoption" als productomschrijving en `ADVISOR AI ADOPTION & STRATEGY` in de ticker blijven wél staan.
- **D66-blok.** Kop `AT THE HEART OF…` → `PART OF THE CAMPAIGN THAT MADE ROB JETTEN PRIME MINISTER` (claim moest matchen met de functieomschrijving). Rol verplaatst naar de labelregel: `STRATEGIC ADVISOR · FUNDRAISING COMMITTEE / D66 & ROB JETTEN · 2024–NOW`. Body: "Record-breaking €2.2M fundraise; closely involved in…". Plaatsing bovenaan blijft.
- **Beyond Business.** Introzin → "A personal practice, not a second career. …" (kaderen als persoonlijke praktijk, niet als vierde beroepsdimensie). NB: de gevraagde extra vísuele scheiding van deze sectie is NIET gedaan — dat is een designkeuze, graag in Design oppakken.
- **Kleine head-/a11y-fixes (21-07):** `<html lang="en">` toegevoegd (screenreaders kozen anders de verkeerde uitspraak; Lighthouse vlagt dit altijd), `<meta name="author" content="Jip Samhoud">` toegevoegd (LinkedIn Post Inspector meldde "No author found"), en `rel="noopener"` op de LinkedIn-link in het contactblok (alle andere externe links hadden het al). Deze drie horen in elke export terug te komen.
- **Meta/og-description** herschreven naar één zin: "Brand builder and commercial leader. Fifteen years of founding companies and shipping products that reach millions."

- 2026-07-21 — Career-sectie, &RANJ SERIOUS GAMES-entry: uitgebreide beschrijving. Nieuw: "Co-owner. Game Studio of the Year. A Rotterdam studio (est. 1999) developing serious games and gamification software in-house, combining game design, software engineering, behavioural science and AI. Twenty-five years of behaviour change through play, with 1M+ players worldwide, building for Johns Hopkins Institute, War Child, Zurich, Erasmus MC and Houthoff." ("Co-owner." als prefix behouden voor consistentie met andere career-entries.) NB: case card № 05 heeft nog de kortere &ranj-tekst (3 clients) — bewust niet meegewijzigd.

- 2026-07-15 (v2) — Design zet de SEO/social meta-tags + JSON-LD nu ZELF in de statische `<head>` (en niet meer in het helmet-blok), met de korte `<title>` en de lange `og:title`/`twitter:title`. De handmatige head-dedup-stap bij deploy is niet meer nodig; controleer alleen nog dat er geen duplicaten zijn. Nieuwe work-tegel "ANWB Streetwise" toegevoegd.

- 2026-07-15 — Copy-fixes uit de review (25 years i.p.v. 30+ years op 2 plekken; 2018-timeline herschreven; telefoonnummer verwijderd) + semantische headings (1× h1, 6× h2).

- 2026-07-13 — Werkafspraak-commentaarblok staat bovenin de broncode.

- 2026-07-13 — Contact-sectie, zin onder "LET'S TALK.": "Building the next chapter from September 2026. Looking for what's next? Let's build and innovate together." (zat in de Design-export van 13-07).

## Infrastructuur (hoeft niet naar Design)

- 2026-07-15 — SEO: sitemap.xml en robots.txt (met sitemap-verwijzing) toegevoegd; JSON-LD Person-schema gekopieerd naar de statische head (stond alleen in het helmet-blok). Hoort bij de vaste head-tags-stap bij elke deploy.

- 2026-07-13 — Eerste deploy naar Cloudflare Worker `portfolio` via GitHub `jipsamhoud/portfolio`.
- 2026-07-13 — `.assetsignore` + `wrangler.jsonc` toegevoegd (houdt `.git` e.d. uit de publieke site).
- 2026-07-13 — www-CNAME + Worker-route, 301 www → root, Always Use HTTPS, workers.dev-URL's uit.
