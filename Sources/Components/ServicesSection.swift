import Foundation
import Ignite

struct FeatureHighlights: HTML {
    var body: some HTML {
        Section {
            Section {
                Text("What I Bring")
                    .class("swift-section-title")

                FeatureBlock(
                    title: "Performance-Driven",
                    description: "I optimize for speed and efficiency. From video carousels handling millions of streams to real-time AR tracking, I build apps that are fast and responsive. Every millisecond matters.",
                    icon: "speedometer2",
                    alignment: "left"
                )

                FeatureBlock(
                    title: "Production-Ready",
                    description: "Experienced with the full iOS release cycle — provisioning certificates, TestFlight beta testing, automated DSYM uploads to Firebase Crashlytics, and App Store deployment. I ship reliable code.",
                    icon: "rocket-takeoff",
                    alignment: "right"
                )

                FeatureBlock(
                    title: "User-Focused",
                    description: "Built a health chatbot achieving 6,500+ active users. Engineered notification systems that reduced patient wait times. I design experiences that solve real problems for real people.",
                    icon: "person-heart",
                    alignment: "left"
                )

                FeatureBlock(
                    title: "Versatile",
                    description: "From UIKit to SwiftUI, AVKit to ARKit, Agora to SendBird — I pick the right tool for the job. Comfortable with MVC, MVVM, hybrid SDUI architectures, and modern concurrency patterns.",
                    icon: "layers",
                    alignment: "right"
                )
            }
            .class("swift-container")
        }
        .class("section-white")
        .id("skills")
    }
}

struct FeatureBlock: HTML {
    let title: String
    let description: String
    let icon: String
    let alignment: String

    var body: some HTML {
        Section {
            Section {
                Text {
                    Image(systemName: icon)
                        .accessibilityLabel(title)
                }
                .class("feature-icon")

                Text(title)
                    .class("feature-title")

                Text(description)
                    .class("feature-desc")
            }
            .class("feature-content")
        }
        .class("feature-block feature-\(alignment)")
    }
}
