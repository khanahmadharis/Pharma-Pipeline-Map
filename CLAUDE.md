# Pharma Pipeline Map

Single-file static site. `index.html` contains everything (inline CSS, JS, fonts). `og-image.png` is the link preview. No build step, no dependencies.

## Publishing (GitHub Pages)
- Deploys via `.github/workflows/pages.yml` on every push to `main`; the repository's Pages source must be "GitHub Actions".
- `scripts/publish.sh` does the first-time setup with the `gh` CLI: creates the public repo, pushes, enables Pages, and rewrites the `YOUR-GITHUB-USERNAME` placeholder in the meta tags.
- After the first deploy the site lives at `https://<username>.github.io/pharma-pipeline-map/`.

## Editing
- Content lives in the JS data blocks inside `index.html` (STAGES, MODALITIES, DOSAGE, MX, ORG_FUNCTIONS, GXP, SYSTEMS, GLOSSARY, story data).
- Writing rule: no em dashes anywhere in copy.
- Keep the file self-contained: no external scripts, stylesheets or fonts.

## Analytics
- Visits are counted with GoatCounter (dashboard: https://pharmapipelinemap.goatcounter.com). Cookieless, so no consent banner is needed.
- The counter is inline code in `index.html` (search for `GoatCounter`) that calls the `/count` endpoint directly. No external script is loaded, which keeps the self-contained rule.
- It counts only on `khanahmadharis.github.io`, never on local test servers. Each page (stage pages, swimlanes and so on) counts as its own view; role filter and Follow a molecule choices are counted as events.
