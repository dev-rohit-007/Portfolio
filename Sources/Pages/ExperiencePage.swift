import Foundation
import Ignite

struct ExperiencePage: StaticPage {
    var title = "Experience"
    var path = "/experience"
    var description = "3+ years of production iOS development at Pocket FM, Flam, Practo, and Raja Software Labs."

    var body: some HTML {
        Section {
            Section {
                Text("Experience")
                    .class("swift-section-title")

                Text("3+ years building production iOS apps at scale.")
                    .class("swift-section-subtitle")

                Section {
                    ExpTimeline(
                        company: "Pocket FM",
                        role: "Software Engineer - iOS",
                        period: "July 2025 – Present",
                        highlights: [
                            "Owning CarPlay integration — resolved crashes, image scaling issues, and background playback bugs.",
                            "Building Collections Module and Home Screen changes, driving content discovery.",
                            "Integrated FreshChat ticket history and credits system for customer support flows.",
                            "Writing comprehensive unit test suites for CarPlay, Audio Books, and NPS Survey modules.",
                            "Fixing production bugs including auto-unlock toggle flicker and episode access issues."
                        ],
                        colorClass: "exp-pocketfm"
                    )

                    ExpTimeline(
                        company: "Flam",
                        role: "Software Engineer - iOS",
                        period: "May 2025 – July 2025",
                        highlights: [
                            "Developed real-time 3D object tracking with ARKit.",
                            "Created a C++ library for GPU-rendered UI on detected objects."
                        ],
                        colorClass: "exp-flam"
                    )

                    ExpTimeline(
                        company: "Practo",
                        role: "Software Engineer 2 (iOS)",
                        period: "Oct 2023 – May 2025",
                        highlights: [
                            "Built dynamic video carousel (AVKit, m3u8) generating over \u{20B9}2 crore in ad revenue.",
                            "Integrated Picture-in-Picture using Agora SDK for video consultations.",
                            "Built health query chatbot with SendBird SDK — 6,500+ active users.",
                            "Engineered real-time notification system reducing patient wait times."
                        ],
                        colorClass: "exp-practo"
                    )

                    ExpTimeline(
                        company: "Raja Software Labs",
                        role: "Software Engineer",
                        period: "June 2022 – Aug 2023",
                        highlights: [
                            "Developed camera integration features for iOS version of Google Home.",
                            "Implemented analytics logger for camera events, optimizing performance."
                        ],
                        colorClass: "exp-raja"
                    )
                }
                .class("exp-timeline")
            }
            .class("swift-container")
        }
        .class("section-dark")
        .id("experience")
    }
}
