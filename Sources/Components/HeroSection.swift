import Foundation
import Ignite

struct HeroSection: HTML {
    var body: some HTML {
        Section {
            Section {
                Text {
                    Image(systemName: "apple")
                        .accessibilityLabel("Apple logo")
                }
                .class("hero-apple-icon")

                Section {
                    Text("Welcome to my site!")
                        .class("hero-welcome")

                    Text("IT'S NICE TO MEET YOU")
                        .class("hero-heading")

                    Link("TELL ME MORE", target: "#services")
                        .class("hero-btn")
                }
                .class("hero-content")
            }
        }
        .class("hero-section")
    }
}
