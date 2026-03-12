import Foundation
import Ignite

struct AboutSection: HTML {
    var body: some HTML {
        Section {
            Section {
                Text("About")
                    .class("swift-section-title")

                Section {
                    Section {
                        Text("B.Tech in Computer Science from Guru Gobind Singh Indraprastha University (CGPA: 8.28). Based in Bengaluru, I've spent 3+ years building iOS apps that impact millions — from healthcare platforms at Practo to AR experiences at Flam, and camera features for Google Home at Raja Software Labs.")
                            .class("about-text")

                        Text("I'm passionate about writing clean, modular Swift code and creating smooth user experiences. When I'm not coding, I'm exploring new Apple frameworks and contributing to the developer community.")
                            .class("about-text")

                        Section {
                            Link("LinkedIn", target: "https://www.linkedin.com/in/rohitalgodeveloper/")
                                .target(.blank)
                                .relationship(.noOpener, .noReferrer)
                                .class("about-link")

                            Link("GitHub", target: "https://github.com/dev-rohit-007")
                                .target(.blank)
                                .relationship(.noOpener, .noReferrer)
                                .class("about-link")

                            Link("rohit.algo.developer@gmail.com", target: "mailto:rohit.algo.developer@gmail.com")
                                .class("about-link")
                        }
                        .class("about-links")
                    }
                    .class("about-content")
                }
                .class("about-wrapper")
            }
            .class("swift-container")
        }
        .class("section-dark")
        .id("about")
    }
}
