import Foundation
import Ignite

struct SkillsSection: HTML {
    var body: some HTML {
        Section {
            Text("Skills & Technologies")
                .font(.title2)
                .class("section-heading text-center")
                .margin(.bottom, .large)

            Grid {
                SkillCard(
                    icon: "apple",
                    title: "iOS Development",
                    skills: ["Swift", "SwiftUI", "UIKit", "Core Data", "Combine"]
                )
                SkillCard(
                    icon: "code-slash",
                    title: "Languages",
                    skills: ["Swift", "Python", "JavaScript", "TypeScript", "SQL"]
                )
                SkillCard(
                    icon: "tools",
                    title: "Tools & Platforms",
                    skills: ["Xcode", "Git", "GitHub Actions", "Docker", "Firebase"]
                )
            }
            .columns(3)
        }
        .class("skills-section")
    }
}

struct SkillCard: HTML {
    let icon: String
    let title: String
    let skills: [String]

    var body: some HTML {
        Card {
            Text {
                Image(systemName: icon)
                    .accessibilityLabel(title)
            }
            .class("skill-icon")

            Text(title)
                .font(.title4)

            ForEach(skills) { skill in
                Badge(skill)
                    .role(.info)
                    .class("tech-badge")
            }
        }
        .class("skill-card")
    }
}
