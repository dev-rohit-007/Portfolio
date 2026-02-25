import Foundation
import Ignite

struct ProjectCard: HTML {
    let title: String
    let description: String
    let technologies: [String]
    let githubURL: String?
    let liveURL: String?
    let icon: String
    let colorIndex: Int

    init(
        title: String,
        description: String,
        technologies: [String],
        githubURL: String? = nil,
        liveURL: String? = nil,
        icon: String = "folder",
        colorIndex: Int = 1
    ) {
        self.title = title
        self.description = description
        self.technologies = technologies
        self.githubURL = githubURL
        self.liveURL = liveURL
        self.icon = icon
        self.colorIndex = colorIndex
    }

    var body: some HTML {
        Card {
            Section {
                Text {
                    Image(systemName: icon)
                        .accessibilityLabel(title)
                }
                .font(.title1)
                .foregroundStyle(.white)
            }
            .class("showcase-icon-area icon-bg-\(colorIndex)")

            Section {
                Text(title)
                    .font(.title3)

                Text(description)
                    .foregroundStyle(.secondary)

                Section {
                    ForEach(technologies) { tech in
                        Badge(tech)
                            .role(.primary)
                            .class("tech-badge")
                    }
                }

                HStack {
                    if let githubURL {
                        Link(target: githubURL) {
                            Image(systemName: "github")
                                .accessibilityLabel("GitHub")
                            Span(" Code")
                        }
                        .target(.blank)
                        .relationship(.noOpener, .noReferrer)
                        .linkStyle(.button)
                        .role(.dark)
                    }

                    if let liveURL {
                        Link(target: liveURL) {
                            Image(systemName: "box-arrow-up-right")
                                .accessibilityLabel("Live site")
                            Span(" Live")
                        }
                        .target(.blank)
                        .relationship(.noOpener, .noReferrer)
                        .linkStyle(.button)
                        .role(.info)
                    }
                }
                .class("showcase-cta")
            }
            .class("showcase-info")
        }
        .class("showcase-item")
    }
}
