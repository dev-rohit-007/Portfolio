import Foundation
import Ignite

struct HeroSection: HTML {
    var body: some HTML {
        Section {
            Section {
                Section {
                    Text {
                        Span("Hi, I'm Rohit")
                    }
                    .class("hero-name")

                    Text {
                        Span("I craft")
                        " "
                        Span("iOS")
                            .class("hero-gradient-text")
                        " "
                        Span("experiences")
                    }
                    .class("hero-heading")

                    Text("3+ years of end-to-end iOS development. From legacy UIKit architectures to modern SwiftUI interfaces, I build robust mobile solutions engineered for performance and user retention.")
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
                    Include("hero-swift-logo.html")
                }
                .class("hero-image-area")
            }
            .class("hero-inner")
			.font(.bitcount)
        }
        .class("hero-section")
    }
}
