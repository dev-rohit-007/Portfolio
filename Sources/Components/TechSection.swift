import Foundation
import Ignite

struct TechSection: HTML {
    var body: some HTML {
        Section {
            Text("TECH.")
                .class("section-title")

            Text("techs and tools used to build great apps.")
                .class("section-subtitle")

            Grid {
                TechItem(label: "Xcode", icon: "hammer.fill", colorClass: "tech-xcode")
                TechItem(label: "iOS", icon: "phone", colorClass: "tech-ios")
                TechItem(label: "Swift", icon: "swift", colorClass: "tech-swift")
                TechItem(label: "Git", icon: "git", colorClass: "tech-git")
                TechItem(label: "Firebase", icon: "server", colorClass: "tech-firebase")
                TechItem(label: "Python", icon: "braces", colorClass: "tech-python")
                TechItem(label: "JavaScript", icon: "filetype-js", colorClass: "tech-js")
                TechItem(label: "Docker", icon: "box-seam", colorClass: "tech-docker")
            }
            .columns(4)
            .class("tech-grid")
        }
        .class("section-gray")
        .id("tech")
    }
}

struct TechItem: HTML {
    let label: String
    let icon: String
    let colorClass: String

    var body: some HTML {
        Section {
            Section {
                Text {
                    Image(systemName: icon)
                        .accessibilityLabel(label)
                }
            }
            .class("tech-icon-box \(colorClass)")

            Text(label)
                .class("tech-label")
        }
        .class("tech-item")
    }
}
