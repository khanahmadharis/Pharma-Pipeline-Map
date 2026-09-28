#!/usr/bin/env bash
# First-time publish to GitHub Pages. Requires: git, gh (logged in: gh auth login).
set -euo pipefail
REPO="${1:-pharma-pipeline-map}"
USER="$(gh api user -q .login)"
cd "$(dirname "$0")/.."
sed -i.bak "s/YOUR-GITHUB-USERNAME/$USER/g" index.html && rm -f index.html.bak
git init -b main 2>/dev/null || true
git add -A
git commit -m "Publish pharma pipeline map" || true
gh repo create "$REPO" --public --source=. --remote=origin --push
# Pages with GitHub Actions as the source
gh api -X POST "repos/$USER/$REPO/pages" -f build_type=workflow >/dev/null 2>&1 || gh api -X PUT "repos/$USER/$REPO/pages" -f build_type=workflow >/dev/null
echo "Deploying. In a minute the site will be at: https://$USER.github.io/$REPO/"
echo "Watch the run with: gh run watch"
