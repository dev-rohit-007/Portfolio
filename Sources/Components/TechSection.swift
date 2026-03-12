import Foundation
import Ignite

struct TechSection: HTML {
    var body: some HTML {
        Section {
            Section {
                Text("Tech Stack")
                    .class("swift-section-title")

                Text("Languages, frameworks, and tools I work with daily.")
                    .class("swift-section-subtitle")

                Section {
                    TechCategory(
                        title: "Languages",
                        items: [
                            TechEntry(name: "Swift", icon: "swift", colorClass: "tc-swift"),
                            TechEntry(name: "Objective-C", icon: "code-slash", colorClass: "tc-objc"),
                            TechEntry(name: "C++", icon: "braces", colorClass: "tc-cpp")
                        ]
                    )

                    TechCategory(
                        title: "Frameworks",
                        items: [
                            TechEntry(name: "UIKit", icon: "phone", colorClass: "tc-uikit"),
                            TechEntry(name: "SwiftUI", icon: "rectangle-on-rectangle", colorClass: "tc-swiftui"),
                            TechEntry(name: "AVKit", icon: "play-circle", colorClass: "tc-avkit"),
                            TechEntry(name: "CoreData", icon: "cylinder", colorClass: "tc-coredata"),
                            TechEntry(name: "ARKit", icon: "badge-ar", colorClass: "tc-arkit")
                        ]
                    )

                    TechCategory(
                        title: "Tools",
                        items: [
                            TechEntry(name: "Xcode", icon: "hammer", colorClass: "tc-xcode"),
                            TechEntry(name: "Git", icon: "git", colorClass: "tc-git"),
                            TechEntry(name: "Firebase", icon: "fire", colorClass: "tc-firebase"),
                            TechEntry(name: "CocoaPods", icon: "box-seam", colorClass: "tc-cocoapods")
                        ]
                    )

                    TechCategory(
                        title: "Concepts",
                        items: [
                            TechEntry(name: "MVVM", icon: "diagram-3", colorClass: "tc-mvvm"),
                            TechEntry(name: "GCD", icon: "arrow-left-right", colorClass: "tc-gcd"),
                            TechEntry(name: "Async/Await", icon: "arrow-repeat", colorClass: "tc-async"),
                            TechEntry(name: "SDUI", icon: "layout-text-window", colorClass: "tc-sdui")
                        ]
                    )
                }
                .class("tech-categories")
            }
            .class("swift-container")
        }
        .class("section-white")
        .id("tech")
    }
}

struct TechEntry {
    let name: String
    let icon: String
    let colorClass: String
}

struct TechCategory: HTML {
    let title: String
    let items: [TechEntry]

    var body: some HTML {
        Section {
            Text(title)
                .class("tech-cat-title")

            Section {
                ForEach(items) { item in
                    Section {
                        Text {
                            Image(systemName: item.icon)
                                .accessibilityLabel(item.name)
                        }
                        .class("tech-pill-icon \(item.colorClass)")

                        Text(item.name)
                            .class("tech-pill-label")
                    }
                    .class("tech-pill")
                }
            }
            .class("tech-pill-row")
        }
        .class("tech-category")
    }
}
