# Website Review — chrislovejoy.me (July 2026)

A review of the site's content, technical setup, and live experience, with suggested improvements ordered by impact. Overall the site is in good shape: the homepage pitch is strong ("I build AI products for complex, domain-specific verticals"), the writing archive is deep (118 posts), and the deploy pipeline works. Most issues below are unfinished edges rather than structural problems — probably 2–3 hours of focused editing to clear the high-priority list.

---

## High priority — visible to visitors

### 1. The About page bio is stale and contradicts the homepage
The homepage (`_layouts/home.html:11`) says *"Currently: Member of Technical Staff at Anthropic"*, but `_pages/about-me.md:17` still says *"Aug 2023 - now: Founding team at Anterior"*. Anyone who clicks through from the homepage to learn more gets a contradictory story. Update the About page timeline to include the Anthropic role.

### 2. Empty/placeholder pages are publicly reachable
- `_pages/frequently-asked-questions.md` — three question headers ("I'm a disgruntled medic, what should I do?", "I have a start-up idea…", "Can you be your CTO?") with **no answers**. Either write the answers or unpublish the page.
- `_pages/Events.md` — contains only a bracketed note-to-self: *"[a place to put a list of events… although do I definitely want to do this? -> to think about it]"*. Delete or finish.
- `_pages/51 Stats ML/vertical-ai-faqs.md` — published-looking page full of bracketed draft placeholders like *"[my takes on a bunch of work operating in this space?]"*.
- `_pages/lists.md` — uses Obsidian wiki-link syntax (`[[Great books]]`, `[[My favourite newsletters]]`) which doesn't render as links in Jekyll. Convert to real Markdown links or remove.

### 3. Localhost URL in production content
`_notes/index.md:7` links to `http://localhost:4000/about-me#say-hi-`. Replace with the relative path `/about-me#say-hi-`.

### 4. Services page has no working call-to-action
`_pages/services.md` pitches consulting in detail, but the booking/CTA buttons and the entire testimonials section are commented out. As-is, an interested visitor has no next step. Either re-enable a single "get in touch" CTA, or — if consulting is no longer offered (given the Anthropic role) — retire or reframe the page.

### 5. Set the tagline in `_config.yml`
Line 26 has `tagline:` empty with the intended value sitting in a comment (`# Medical Doctor, AI Engineer`). The tagline appears in the header/SEO metadata on every page. Set it (perhaps updated to match the current positioning, e.g. "AI for domain-specific verticals").

---

## Medium priority — polish and consistency

### 6. Resolve the About page TODOs
`_pages/about-me.md` contains six `<!-- TODO -->` comments — missing article links, a vague "worked various roles in industry" line, an unfinished post-Cambridge section. Since this is the second-most-visited page type on a personal site, worth an editing pass to either complete or delete each one.

### 7. Latest post has unfinished references
`_posts/55 Tech for Healthcare/2026-07-03-enterprise-tech-stacks-ai-agents.md` still says *"I will add link once available"* and has `<!-- TODO: add YouTube ID when available -->`. If the video is now up, add it.

### 8. Notes section: decide what's published
The `/notes` page manually lists only 2 notes, while 6 more sit untracked in `_notes/` (AI in Healthcare, Computational Biology, RAG, etc.). Decide per-note: publish and list it, or move it to `_private/`. Consider auto-generating the notes index from the collection instead of maintaining a manual list.

### 9. YouTube navigation inconsistency
`_tabs/youtube.md` is fully commented out, but the Speaking page embeds and links the YouTube channel. Either restore the nav tab or accept the inconsistency deliberately.

### 10. Consolidate analytics
`_config.yml` has **both Umami and Matomo active** (plus GoatCounter configured but unused). Running two trackers is redundant weight on every page load. Pick one and remove the others.

### 11. Consolidate comments
Both Disqus (primary) and Giscus are configured. Giscus is lighter, ad-free, and GitHub-native — a better fit for a technical audience. Pick one.

### 12. Optimize the avatar image
`assets/images/CL_small_square_2.jpg` is **1.0 MB at 1237×1237px** for what renders as a small avatar. Resize to ~400px and compress (target <50 KB). Also delete the redundant `CL_small_square.png` (512 KB) and `CL.png` (1.5 MB) if unused.

---

## Low priority — hygiene and housekeeping

### 13. Repo clutter
- Two stray macOS screenshots in the repo root (`Captura de Pantalla 2025-03-03…png`, `Captura de pantalla 2025-09-06…png`) — delete or move into `assets/images/` if actually needed.
- Several untracked files have been sitting in git status for months (`_notes/*.md`, `_pages/Events.md`, etc.) — commit, gitignore, or delete so `git status` is meaningful again.

### 14. Heavy assets (224 MB total)
- Talk PDFs account for ~100 MB (five PDFs of 14–24 MB each). Consider compressing them (`ghostscript` can typically cut slide PDFs by 50–80%) or hosting on a release/CDN.
- MathJax is vendored at 17 MB in-repo. Loading it from a CDN would shrink the repo considerably, if offline support isn't needed.

### 15. Config gaps in `_config.yml`
- `timezone:` is empty — set it (e.g. `America/New_York` or `Europe/London`) so post timestamps render correctly.
- Google/Bing webmaster verification codes are empty — at minimum add Google's for Search Console access (skippable if verified via DNS).

### 16. Theme freshness
The site is a forked snapshot of Chirpy **v7.1.1 (Oct 2024)**, so theme updates require manual merges and none have been applied since. Not urgent, but worth an occasional check of the [Chirpy releases](https://github.com/cotes2020/jekyll-theme-chirpy/releases) for bug/security fixes — especially since `_layouts/home.html` is heavily customized and would need care during a merge.

### 17. Front matter consistency
Posts mix conventions (`public_date`, `status`, `type` fields appear inconsistently; `layout` sometimes omitted). Harmless today, but a consistent template makes future scripting/migration easier.

---

## What's working well

- **Homepage**: clear positioning, credibility markers up front (100k+ views article, 1,000+ citations paper), current role accurate.
- **Content depth**: 118 posts across medicine, healthcare tech, ML, and entrepreneurship; Popular/Recent/Recently-updated sections keep it feeling alive.
- **Speaking page**: well-curated with embedded media.
- **Infrastructure**: GitHub Actions deploy works, `_site/` properly ignored, sitemap + SEO tags + robots.txt all in place, SASS/HTML compression enabled.

## Suggested order of attack

1. Fix the About-page bio (5 min, biggest credibility fix).
2. Unpublish or finish the empty pages: FAQs, Events, lists, vertical-ai-faqs (~30 min).
3. Fix the localhost link and set the tagline (5 min).
4. Decide the Services page's fate given the Anthropic role (~30 min).
5. One editing pass through about-me.md TODOs (~45 min).
6. Housekeeping batch: screenshots, avatar optimization, analytics/comments consolidation (~30 min).
