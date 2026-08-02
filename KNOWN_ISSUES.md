# Known Issues

Issues found during the Chirpy v7.6.0 upgrade (PR #18), to be worked through in a
follow-up PR. Listed in rough priority order, each with steps to fix.

## 1. Duplicate output path for `/notes/index.html`

Jekyll warns on every build:

> Conflict: The following destination is shared by multiple files:
> `_site/notes/index.html`
> — `_tabs/notes.md`
> — `_notes/index.md`

Both files claim the `/notes/` URL, so whichever writes last wins and the
other's content is silently lost.

**Fix:**
1. Open both files and decide which one should own the `/notes/` page.
2. If `_tabs/notes.md` (the sidebar tab) should own it: delete `_notes/index.md`,
   or give it a different `permalink` in its front matter.
3. If `_notes/index.md` should own it: change `_tabs/notes.md` to redirect or
   point elsewhere (tabs need an entry to appear in the sidebar, so more likely
   you want option 2).
4. Rebuild (`bundle exec jekyll build`) and confirm the warning is gone and
   `/notes/` shows the intended content.

## 2. Tracked `.DS_Store` files

Eight macOS `.DS_Store` files are committed (e.g. `_data/.DS_Store`,
`_sass/.DS_Store`, `assets/images/.DS_Store`). They're junk and already
covered by `.gitignore` going forward, but tracked files stay tracked.

**Fix:**
```bash
git rm --cached $(git ls-files | grep '\.DS_Store')
git commit -m "chore: untrack .DS_Store files"
```

## 3. `faraday-retry` warning on every build

Jekyll prints:

> To use retry middleware with Faraday v2.0+, install `faraday-retry` gem

Harmless (comes from the `octokit`/`jekyll-gist` dependency chain), but noisy.

**Fix:** add to the `Gemfile`:
```ruby
gem "faraday-retry"
```
then run `bundle install` (requires working Ruby/OpenSSL — see issue 4).

## 4. Local Ruby has broken OpenSSL (dev environment, not the repo)

The chruby Ruby at `~/.rubies/ruby-3.1.2` links against Homebrew's
`openssl@1.1`, which has since been removed. `ruby -e "require 'openssl'"`
fails, so `bundle install` can't fetch anything over HTTPS. Builds still work
because all required gems are already installed.

**Fix (reinstall Ruby against openssl@3):**
```bash
brew install ruby-install            # if not already present
ruby-install ruby 3.1.6 -- --with-openssl-dir="$(brew --prefix openssl@3)"
chruby ruby-3.1.6                    # or update ~/.ruby-version / shell config
gem install bundler
cd ~/Documents/4_WEBSITE && bundle install
```
Any Ruby ≥ 3.1 satisfies the gemspec (`required_ruby_version ~> 3.1`); the CI
workflow uses 3.1, so staying on a 3.1.x locally keeps parity.

## 5. Root-directory clutter (untracked)

Untracked screenshots and working notes sit in the repo root
(`Captura de Pantalla*.png`, `aesthetic-ideas.md`, `website-review-2026-07.md`,
`_design-variants/`). Not errors — just worth either committing to a sensible
location (e.g. `_private/`), or deleting.

---

## Already fixed in PR #18 (for reference)

- **Old-URL redirects would have broken**: Chirpy v7.6.0 dropped its
  `jekyll-redirect-from` dependency, but 9 posts use `redirect_from` front
  matter. Re-added the gem explicitly in the `Gemfile` and `_config.yml`
  plugins list. (Many other posts have an *empty* `redirect_from:` key — a
  harmless template stub, could be cleaned up someday.)
- **ESLint lint-js CI failure**: the v7.6.0 flat ESLint config linted the whole
  repo, including vendored reveal.js under `slides/`, `scripts/`, and
  `.obsidian/` plugins. Added those to `globalIgnores`.

- **Matomo tracking silently broken**: `_config.yml` had
  `domain: https://chrislovejoy.matomo.cloud/`, but the template prepends `//`
  itself, producing the malformed URL `http://https//chrislovejoy.matomo.cloud//matomo.js`.
  Fixed to the bare hostname.
- **Umami script URL wrong**: `domain` pointed at the dashboard path
  (`https://eu.umami.is/websites/<id>`) instead of the script host
  (`https://eu.umami.is`), so the script loaded only via redirect (if at all).
- **Stale committed build artifacts**: `assets/js/dist/*.min.js` were v7.1.1
  bundles served to production even as templates changed; now generated in CI.
