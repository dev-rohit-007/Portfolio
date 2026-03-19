import Foundation
import Ignite

struct FeatureHighlights: HTML {
    var body: some HTML {
        Section {
            Section {
                Text("What I Bring")
                    .class("swift-section-title")

                Text("Core strengths that define my approach to iOS engineering.")
                    .class("swift-section-subtitle")

                Section {
                    FeatureCard(
                        title: "Performance-Driven",
                        description: "Video carousels handling millions of streams, real-time AR tracking, optimized rendering pipelines. Every millisecond matters.",
                        icon: "speedometer2",
                        accent: "fc-perf"
                    )

                    FeatureCard(
                        title: "Production-Ready",
                        description: "Full iOS release cycle — provisioning, TestFlight, DSYM uploads to Crashlytics, App Store deployment. I ship reliable code.",
                        icon: "rocket-takeoff",
                        accent: "fc-prod"
                    )

                    FeatureCard(
                        title: "User-Focused",
                        description: "Chatbot with 6,500+ active users. Notification systems that reduced wait times. Experiences that solve real problems.",
                        icon: "person-heart",
                        accent: "fc-user"
                    )

                    FeatureCard(
                        title: "Versatile",
                        description: "UIKit to SwiftUI, AVKit to ARKit, Agora to SendBird. MVVM, SDUI, modern concurrency — the right tool for the job.",
                        icon: "layers",
                        accent: "fc-vers"
                    )
                }
                .class("feature-grid")
            }
            .class("swift-container")
        }
        .class("section-white")
        .id("skills")
    }
}

struct FeatureCard: HTML {
    let title: String
    let description: String
    let icon: String
    let accent: String

    var body: some HTML {
        Section {
            Text {
                Image(systemName: icon)
                    .accessibilityLabel(title)
            }
            .class("fc-icon \(accent)")

            Text(title)
                .class("fc-title")

            Text(description)
                .class("fc-desc")
        }
        .class("feature-card-item")
    }
}
