import Foundation
import Ignite

struct PortfolioSection: HTML {
    var body: some HTML {
        Section {
            Section {
                Text("Projects")
                    .class("swift-section-title")

                Text("Apps I've built and contributed to.")
                    .class("swift-section-subtitle")

                Grid {
                    ProjectCard(
                        name: "Pocket FM - CarPlay",
                        description: "End-to-end CarPlay integration for the audio streaming platform. Fixed crashes, image scaling, background playback, and offline handling.",
                        tags: ["CarPlay", "AVFoundation", "UIKit"],
                        icon: "car-fill",
                        colorClass: "project-pocketfm"
                    )
                    ProjectCard(
                        name: "Home & Collections",
                        description: "Built the Collections Module and Home Screen revamp for better content discovery. Server-driven UI architecture.",
                        tags: ["SDUI", "UIKit", "SwiftUI"],
                        icon: "music.note.house",
                        colorClass: "project-pocketfm2"
                    )
                    ProjectCard(
                        name: "Google Home (Camera)",
                        description: "Developed and tested camera integration features for the iOS Google Home app. Implemented analytics logging for camera events.",
                        tags: ["UIKit", "Testing", "Analytics"],
                        icon: "camera-video-fill",
                        colorClass: "project-google"
                    )
                    ProjectCard(
                        name: "Practo Health Chatbot",
                        description: "Health query chatbot with SendBird SDK. User history analysis for personalized doctor recommendations. 6,500+ active users.",
                        tags: ["SendBird", "UIKit", "CoreData"],
                        icon: "chat-dots-fill",
                        colorClass: "project-practo"
                    )
                    ProjectCard(
                        name: "Practo Video Consult",
                        description: "Dynamic video carousel with AVKit and Picture-in-Picture via Agora SDK. Generated ₹2 crore+ in ad revenue.",
                        tags: ["AVKit", "Agora", "m3u8"],
                        icon: "play-circle-fill",
                        colorClass: "project-video"
                    )
                    ProjectCard(
                        name: "Flam AR Engine",
                        description: "Real-time 3D object tracking with ARKit. C++ GPU library for rendering UI elements on detected objects.",
                        tags: ["ARKit", "C++", "GPU"],
                        icon: "badge-ar-fill",
                        colorClass: "project-flam"
                    )
                    ProjectCard(
                        name: "Trailer-Zone",
                        description: "iOS app to search and watch movie trailers without authentication. Built with UICollectionView, UITableView, and AutoLayout.",
                        tags: ["UIKit", "API", "AutoLayout"],
                        icon: "film",
                        colorClass: "project-trailer"
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
