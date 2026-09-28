# Pharma Pipeline Map

An interactive, single-file reference for how a drug goes from idea to market: the stages, the functions busy at each one, the GxP rules, modality, dosage form and the lab and quality systems around them.

Everything is in `index.html` (fonts and scripts inlined, no dependencies). `og-image.png` is the link preview used by LinkedIn and other platforms.

## Publish on GitHub Pages

1. Create a new public repository on GitHub named `Pharma-Pipeline-Map`.
2. Push these files to its `main` branch (see the commands in the chat, or use GitHub Desktop).
3. In the repository, open Settings, then Pages, and set Source to "GitHub Actions".
4. The included workflow deploys on every push. After the first run the site is live at
   `https://khanahmadharis.github.io/Pharma-Pipeline-Map/`.
5. Replace `khanahmadharis` in the two `og:` and two `twitter:` meta tags near the top of `index.html` with your GitHub username, commit, and push again so the LinkedIn preview card picks up the image.

To update the page later, replace `index.html` and push.

## Sharing on LinkedIn

Paste the site URL into a post. LinkedIn builds the preview card from the meta tags in `index.html`. If a stale preview shows, open the LinkedIn Post Inspector and enter the URL to refresh it.
