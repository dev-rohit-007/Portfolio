import Foundation
import Ignite

struct HeroSection: HTML {
    var body: some HTML {
        Section {
            Section {
                Section {
                    Text("RM")
                        .class("initials")
                }
                .class("hero-profile-photo")

                Text("Rohit Mishra")
                    .font(.title1)
                    .class("hero-heading")

                Text("Software Developer")
                    .class("hero-subtitle")
            }
            .class("hero-content")

            Section {
                Text("portfolio")
                    .class("hero-cta-text")
                Text("▼")
                    .class("scroll-arrow")
            }
            .class("hero-cta")
        }
        .class("hero-section")
    }
}
