import Foundation
import Ignite

struct PortfolioSection: HTML {
    var body: some HTML {
        Section {
            Section {
                Text("Projects")
                    .class("swift-section-title")

                Text("Real-world apps shipped to millions of users.")
                    .class("swift-section-subtitle")

                Grid {
                    ProjectCard(
                        name: "CarPlay Audio",
                        description: "Full CarPlay integration for an audio streaming app — background playback, offline caching, crash-free image scaling, and seamless in-car UX.",
                        tags: ["CarPlay", "AVFoundation", "Offline"],
                        icon: "car-fill",
                        colorClass: "project-pocketfm"
                    )
                    ProjectCard(
                        name: "Server-Driven Home",
                        description: "Dynamic home screen powered by server-driven UI. Configurable layouts, A/B testable modules, and a collections discovery engine — all without app updates.",
                        tags: ["SDUI", "UIKit", "SwiftUI"],
                        icon: "house-fill",
                        colorClass: "project-pocketfm2"
                    )
                    ProjectCard(
                        name: "Smart Camera",
                        description: "Camera feed integration with live event analytics for a smart home platform. Real-time stream rendering with low-latency HLS playback.",
                        tags: ["AVKit", "HLS", "Analytics"],
                        icon: "camera-video-fill",
                        colorClass: "project-google"
                    )
                    ProjectCard(
                        name: "Health Chatbot",
                        description: "Real-time health query chatbot with chat history, doctor recommendations, and 6,500+ monthly active users.",
                        tags: ["SendBird", "CoreData", "Chat"],
                        icon: "chat-dots-fill",
                        colorClass: "project-practo"
                    )
                    ProjectCard(
                        name: "Video Carousel & PiP",
                        description: "Swipeable video carousel with m3u8 streaming and Picture-in-Picture for live video consultations. Drove significant ad revenue growth.",
                        tags: ["AVKit", "Agora", "PiP"],
                        icon: "play-circle-fill",
                        colorClass: "project-video"
                    )
                    ProjectCard(
                        name: "AR Object Tracker",
                        description: "Real-time 3D surface detection and object tracking with GPU-accelerated UI overlays rendered via a custom C++ pipeline.",
                        tags: ["ARKit", "C++", "Metal"],
                        icon: "badge-ar-fill",
                        colorClass: "project-flam"
                    )
                }
                .columns(2)
                .class("projects-grid")
            }
            .class("swift-container")
        }
        .class("section-dark")
        .id("projects")
    }
}

struct ProjectCard: HTML {
    let name: String
    let description: String
    let tags: [String]
    let icon: String
    let colorClass: String

    var body: some HTML {
        Section {
            Section {
                Text {
                    Image(systemName: icon)
                        .accessibilityLabel(name)
                }
            }
            .class("project-icon \(colorClass)")

            Text(name)
                .class("project-name")

            Text(description)
                .class("project-desc")

            Section {
                ForEach(tags) { tag in
                    Span(tag)
                        .class("project-tag")
                }
            }
            .class("project-tags")
        }
        .class("project-card")
    }
}
