import Foundation
import Ignite

struct TechSection: HTML {
    var body: some HTML {
        Section {
            Section {
                Text("Technical Stack & Tooling")
                    .class("swift-section-title")

                Text("My daily driver for mobile development, architectural design, and performance optimization.")
                    .class("swift-section-subtitle")

                Section {
                    TechCategory(
						title: "Frameworks",
						items: [
                            TechEntry(name: "SwiftUI", icon: "rectangle-on-rectangle", colorClass: "tc-swiftui", url: "https://developer.apple.com/swiftui/"),
							TechEntry(name: "UIKit", icon: "phone", colorClass: "tc-uikit", url: "https://developer.apple.com/documentation/uikit"),
							TechEntry(name: "AVKit", icon: "play-circle", colorClass: "tc-avkit", url: "https://developer.apple.com/documentation/avkit"),
							TechEntry(name: "CoreData", icon: "cylinder", colorClass: "tc-coredata", url: "https://developer.apple.com/documentation/coredata"),
							TechEntry(name: "ARKit", icon: "badge-ar", colorClass: "tc-arkit", url: "https://developer.apple.com/documentation/arkit")
						]
					)

                    TechCategory(
                        title: "Tools",
                        items: [
                            TechEntry(name: "Xcode", icon: "hammer", colorClass: "tc-xcode", url: "https://developer.apple.com/xcode/"),
                            TechEntry(name: "SPM", icon: "box", colorClass: "tc-spm", url: "https://developer.apple.com/documentation/xcode/swift-packages"),
                            TechEntry(name: "Git", icon: "git", colorClass: "tc-git", url: "https://git-scm.com"),
                            TechEntry(name: "Firebase", icon: "fire", colorClass: "tc-firebase", url: "https://firebase.google.com"),
                            TechEntry(name: "CocoaPods", icon: "box-seam", colorClass: "tc-cocoapods", url: "https://cocoapods.org")
                        ]
                    )

                    TechCategory(
                        title: "Concepts",
                        items: [
							TechEntry(name: "Async/Await", icon: "arrow-repeat", colorClass: "tc-async", url: "https://developer.apple.com/documentation/swift/concurrency"),
							TechEntry(name: "SDUI", icon: "layout-text-window", colorClass: "tc-sdui"),
                            TechEntry(name: "MVVM", icon: "diagram-3", colorClass: "tc-mvvm"),
                            TechEntry(name: "GCD", icon: "arrow-left-right", colorClass: "tc-gcd", url: "https://developer.apple.com/documentation/dispatch")
                        ]
                    )

                    TechCategory(
                        title: "Languages",
                        items: [
                            TechEntry(name: "Swift", icon: "swift", colorClass: "tc-swift", url: "https://www.swift.org"),
                            TechEntry(name: "Objective-C", icon: "code-slash", colorClass: "tc-objc", url: "https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/"),
                            TechEntry(name: "C++", icon: "braces", colorClass: "tc-cpp")
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
    var url: String? = nil
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
                    if let url = item.url {
                        Text {
                            Link(target: url) {
                                Image(systemName: item.icon)
                                    .accessibilityLabel(item.name)
                                Span(item.name)
                                    .class("tech-pill-label")
                            }
                            .class("tech-pill-link \(item.colorClass)")
                        }
                        .class("tech-pill")
                    } else {
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
            }
            .class("tech-pill-row")
        }
        .class("tech-category")
    }
}
