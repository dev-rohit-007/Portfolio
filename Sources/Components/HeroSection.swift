import Foundation
import Ignite

struct HeroSection: HTML {
    var body: some HTML {
        Section {
            Section {
                Section {
                    Text {
                        Span("Rohit Mishra")
                    }
                    .class("hero-name")

                    Text {
                        Span("iOS")
                            .class("hero-gradient-text")
                        Span(" Developer")
                    }
                    .class("hero-heading")

                    Text("3+ years crafting elegant, high-performance iOS applications. From ARKit to real-time video, I build apps that delight users and drive business results.")
                        .class("hero-tagline")

                    Section {
                        Link("View My Work", target: "#experience")
                            .class("hero-btn")

                        Link("Get In Touch", target: "mailto:rohit.algo.developer@gmail.com")
                            .class("hero-btn-outline")
                    }
                    .class("hero-buttons")
                }
                .class("hero-content")

                Section {
                    Text {
                        Image(systemName: "apple")
                            .accessibilityLabel("Apple logo")
                    }
                    .class("hero-swift-bird")
                }
                .class("hero-image-area")
            }
            .class("hero-inner")
        }
        .class("hero-section")
    }
}
