# Homepage design exploration — status

**Date:** July 28, 2026 · **Status:** paused, no variant chosen yet

Five hand-built HTML/CSS homepage mockups for chrislovejoy.me (real fonts via Google Fonts, real content — directly translatable into the Jekyll/Chirpy theme):

- `variant-A.html` — **The Journal**: editorial cream, Fraunces serif, numbered essay index, teal accent
- `variant-B.html` — **Clinical Precision**: teal sidebar, Newsreader/Inter, career-timeline strip, greatest-hits stat cards
- `variant-C.html` — **Neural Dark**: dark mode, Space Grotesk + Plex Mono, purple→teal gradient, network motif
- `variant-D.html` — **Swiss Print**: black rules, Archivo, coral accent, dense work-index table
- `variant-E.html` — **Digital Garden**: paper + botanical greens, Spectral, growth-stage markers (🌱/🌿/🌲)

`design-board.html` — side-by-side comparison board (open this to review all five).

**To resume:** open the board, pick a direction (or a remix, e.g. "A's layout with B's timeline"), then implement in the site repo — key touchpoints are `_sass/variables-hook.scss` (fonts/colors) and `_layouts/home.html` (structure). Related reference docs in the repo: `aesthetic-ideas.md`, `website-review-2026-07.md`.

Note: gstack's AI-image design generation was unavailable (needs an OpenAI API key with a verified org — run `~/.claude/skills/gstack/design/dist/design setup` if wanted); these HTML mockups were built directly instead.
