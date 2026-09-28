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
