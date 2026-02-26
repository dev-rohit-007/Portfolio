# iOS Developer Portfolio

A single-page developer portfolio built entirely in **Swift** using [Ignite](https://github.com/twostraws/Ignite) static site generator. Deployed automatically to GitHub Pages.

**Live:** [dev-rohit-007.github.io/Portfolio](https://dev-rohit-007.github.io/Portfolio)

## Sections

- **Hero** — Dark cinematic landing with gold accent typography
- **Services** — App Payment, Responsive Design, UX/UI Design
- **Portfolio** — App-icon style project showcase grid
- **About Me** — Brief developer bio
- **Tech** — Tools and technologies grid
- **Footer** — Social links (Twitter, GitHub, LinkedIn, Email)

## Tech Stack

- **Swift** — All site logic and content
- **Ignite** — Static site generation (SwiftUI-like API)
- **Bootstrap** — Responsive layout
- **GitHub Actions** — CI/CD for auto-deployment
- **GitHub Pages** — Hosting

## Local Development

```bash
swift run
```

The generated site is in the `Build/` directory.

## Deployment

Automatically deploys to GitHub Pages on push to `master` via GitHub Actions.

### First-time setup

1. Go to repo **Settings > Pages**
2. Under **Source**, select **GitHub Actions**
3. Push to `master`
