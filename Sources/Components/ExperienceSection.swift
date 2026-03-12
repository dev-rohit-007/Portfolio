import Foundation
import Ignite

struct ExperienceSection: HTML {
    var body: some HTML {
        Section {
            Section {
                Text("Experience")
                    .class("swift-section-title")

                Text("3+ years building production iOS apps at scale.")
                    .class("swift-section-subtitle")

                ExperienceCard(
                    company: "Pocket FM",
                    role: "Software Engineer - iOS",
                    period: "July 2025 – Present",
                    highlights: [
                        "Owning CarPlay integration — resolved crashes, image scaling issues, and background playback bugs for a seamless in-car audio experience.",
                        "Building the Collections Module and Home Screen module changes, driving content discovery on the main landing page.",
                        "Integrated FreshChat ticket history display and credits system changes for improved customer support flows.",
                        "Writing comprehensive unit test suites for CarPlay, Audio Books, and NPS Survey modules.",
                        "Fixing production bugs including auto-unlock toggle flicker, episode access for premium users, and Hindi language show descriptions."
                    ],
                    colorClass: "exp-pocketfm"
                )

                ExperienceCard(
                    company: "Flam",
                    role: "Software Engineer - iOS",
                    period: "May 2025 – July 2025",
                    highlights: [
                        "Worked with ARKit to develop real-time 3D object tracking solutions.",
                        "Created a C++ library that interacts with the GPU to render UI elements on top of detected objects."
                    ],
                    colorClass: "exp-flam"
                )

                ExperienceCard(
                    company: "Practo",
                    role: "Software Engineer 2 (iOS)",
                    period: "Oct 2023 – May 2025",
                    highlights: [
                        "Built a dynamic video carousel (AVKit, m3u8) generating over ₹2 crore in ad revenue.",
                        "Integrated Picture-in-Picture using Agora SDK for video consultations.",
                        "Built a health query chatbot with SendBird SDK, achieving 6,500+ active users.",
                        "Engineered real-time notification system reducing patient wait times."
                    ],
                    colorClass: "exp-practo"
                )

                ExperienceCard(
                    company: "Raja Software Labs",
                    role: "Software Engineer",
                    period: "June 2022 – Aug 2023",
                    highlights: [
                        "Developed camera integration features for iOS version of Google Home.",
                        "Implemented analytic logger for camera events, optimizing performance."
                    ],
                    colorClass: "exp-raja"
                )
            }
            .class("swift-container")
        }
        .class("section-dark")
        .id("experience")
    }
}

struct ExperienceCard: HTML {
    let company: String
    let role: String
    let period: String
    let highlights: [String]
    let colorClass: String

    var body: some HTML {
        Section {
            Section {
                Text(company)
                    .class("exp-company")

                Text(role)
                    .class("exp-role")

                Text(period)
                    .class("exp-period")
            }
            .class("exp-header")

            Section {
                ForEach(highlights) { highlight in
                    Text {
                        Span("→ ")
                            .class("exp-arrow")
                        Span(highlight)
                    }
                    .class("exp-highlight")
                }
            }
            .class("exp-body")
        }
        .class("exp-card \(colorClass)")
    }
}
