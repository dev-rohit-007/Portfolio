# Portfolio — Rohit Mishra

A developer portfolio built entirely in **Swift** using [Ignite](https://github.com/twostraws/Ignite), a static site generator with SwiftUI-like syntax. Deployed automatically to GitHub Pages via GitHub Actions.

**Live site:** [dev-rohit-007.github.io/Portfolio](https://dev-rohit-007.github.io/Portfolio)

## Tech Stack

- **Swift 5.9+** — Site logic and content
- **Ignite** — Static site generation with SwiftUI-like API
- **Bootstrap** — Responsive layout (bundled by Ignite)
- **GitHub Actions** — CI/CD pipeline for auto-deployment
- **GitHub Pages** — Hosting

## Project Structure

```
Portfolio/
├── Sources/
│   ├── Site.swift              # Site configuration & entry point
│   ├── Pages/
│   │   ├── Home.swift          # Landing page with hero, skills, projects
│   │   ├── Projects.swift      # Full projects showcase
│   │   └── About.swift         # About page with timeline & contact
│   ├── Components/
│   │   ├── HeroSection.swift   # Hero banner component
│   │   ├── SkillsSection.swift # Skills grid with badges
│   │   ├── ProjectCard.swift   # Reusable project card
│   │   ├── FeaturedProjects.swift
│   │   ├── SiteNavBar.swift    # Navigation bar
│   │   └── SiteFooter.swift    # Footer with social links
│   └── Layouts/
│       └── MainLayout.swift    # Page layout wrapper
├── Assets/
│   └── css/custom.css          # Custom dark theme styling
├── .github/workflows/
│   └── deploy.yml              # GitHub Pages deployment
└── Package.swift
```

## Local Development

### Prerequisites

- macOS 13+
- Swift 5.9+

### Build & Preview

```bash
# Build the site
swift run

# The generated site is in the Build/ directory
# Preview with any local server:
cd Build && python3 -m http.server 8000
```

Then open [http://localhost:8000](http://localhost:8000).

## Deployment

The site deploys automatically to GitHub Pages when you push to the `master` branch. The GitHub Actions workflow:

1. Checks out the code on a macOS runner
2. Runs `swift run` to build the site
3. Deploys the `Build/` folder to GitHub Pages

### First-time setup

1. Go to your repo **Settings > Pages**
2. Under **Source**, select **GitHub Actions**
3. Push to `master` — the workflow handles the rest

## Customization

- Edit `Sources/Site.swift` to change site metadata
- Modify pages in `Sources/Pages/` to update content
- Adjust the theme in `Assets/css/custom.css`
- Add new components in `Sources/Components/`

## License

MIT
