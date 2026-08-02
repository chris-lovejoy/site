# Aesthetic & Lateral Improvement Ideas — chrislovejoy.me

A reference list of "cool" visual and structural ideas for the site, brainstormed July 2026. Context: the site currently runs stock Chirpy styling (Source Sans Pro/Lato, default blue accent, standard sidebar layout). The theme exposes `_sass/variables-hook.scss` as an empty, intended customization point — most typography/color changes go there.

Roughly ordered from "afternoon of CSS" to "weekend project" within each group.

---

## Identity & typography (biggest visual return for least effort)

1. **A distinctive font pairing.** Swap Lato headings for a characterful serif (Fraunces, Newsreader, Spectral) while keeping a clean sans body. Instantly moves the site from "template" to "publication." Two-line change in `variables-hook.scss`.
2. **An ownable accent color + palette.** Chirpy's default blue is anonymous. Something that nods to the doctor→AI story — a clinical teal, or a duotone system used consistently across links, buttons, and category badges.
3. **A refined dark mode.** Chirpy ships dark mode, but tuning it (warmer blacks, adjusted accent) is where personal sites feel "designed" rather than "themed."
4. **Tufte-style sidenotes for essays.** Margin notes instead of footnotes for long-form technical writing. Distinctive, "serious essayist," doable in CSS with a small include.

## Homepage & About page

5. **A visual career timeline.** Medicine → data science → Anterior → Anthropic is an unusual arc, currently a bullet list. A horizontal timeline graphic (even pure CSS) would make the story land in two seconds.
6. **"Greatest hits" cards.** Popular Posts already has killer social proof (100k+ views, 1,000+ citations) — style as cards with the stat as a big badge rather than list items.
7. **A "Start Here" pathway.** With 118 posts, new visitors need curation. A visually distinct page with branching paths ("If you're a clinician curious about AI, read these 3… If you're building vertical AI, start here…").
8. **A `/now` page.** Small, human, fits the personal-site ethos (see nownownow.com).

## Notes section → proper digital garden

9. **Growth-stage indicators.** Tag notes 🌱 seedling / 🌿 budding / 🌲 evergreen — signals "living garden, not abandoned drafts" (also solves the half-published notes problem from `website-review-2026-07.md`).
10. **An interactive graph view.** Force-directed D3 graph of note interconnections, Obsidian-style. The link structure already exists in the Obsidian vault. The kind of thing people screenshot and share.

## Playful / on-brand touches

11. **A generative header animation.** Subtle particle/neural-network canvas behind the homepage intro — restrained, slow-moving, respects `prefers-reduced-motion`. On-brand without being cheesy.
12. **Console Easter egg.** A styled `console.log` greeting for developers who open devtools ("👋 Curious? The source is at github.com/chris-lovejoy…").
13. **Auto-generated OG images.** Per-post social cards with title + branding, generated at build time — every shared link looks designed.
14. **A talk map.** Pins on a world map for speaking engagements, linked from the Speaking page.
15. **Series cover art.** Group the Spanish-learning diary and vertical-AI posts into visually distinct series with their own header treatments — turns an archive into "collections."

## Bigger lateral swings

16. **"Ask my writing."** A small chat interface over the 118 posts (Claude API + embeddings). Portfolio piece and navigation tool in one — almost expected for an Anthropic MTS.
17. **A public stats page.** Words written per year, posts per category, a GitHub-style writing heatmap — buildable from front matter at build time.
18. **Break from Chirpy's sidebar entirely on the homepage.** Full-width editorial layout (big type, generous whitespace) while keeping Chirpy for article pages. `_layouts/home.html` is already custom, so the seam exists.

---

**Best impact-per-hour picks:** 1, 2, 5, 9, 12 — typography, color, timeline, garden stages, Easter egg.
