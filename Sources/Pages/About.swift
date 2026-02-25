import Foundation
import Ignite

struct About: StaticPage {
    var title = "About"

    var body: some HTML {
        Section {
            Text("About Me")
                .font(.title1)
                .class("section-heading text-center")
                .margin(.top, .xLarge)
                .margin(.bottom, .large)

            Grid {
                VStack {
                    Text("I'm Rohit Mishra — a software developer who loves building things that live on the internet and in people's pockets.")
                        .margin(.bottom, .medium)

                    Text("I'm passionate about Swift, iOS development, and creating applications that are both beautiful and functional. I believe in writing clean, maintainable code and continuously learning new technologies.")
                        .margin(.bottom, .medium)

                    Text("Whether it's a mobile app, a command-line tool, or a static website (like this one, built entirely in Swift!), I enjoy the entire process of taking an idea from concept to deployment.")
                        .margin(.bottom, .medium)

                    Text("When I'm not coding, you'll find me exploring new tech, contributing to open source, or learning something new.")
                }
                .width(7)

                VStack {
                    Card {
                        Text("Quick Facts")
                            .font(.title4)
                            .margin(.bottom, .medium)

                        QuickFact(icon: "geo-alt-fill", label: "Location", value: "India")
                        QuickFact(icon: "code-slash", label: "Languages", value: "Swift, Python, JS")
                        QuickFact(icon: "apple", label: "Focus", value: "iOS Development")
                        QuickFact(icon: "book", label: "Learning", value: "Always")
                        QuickFact(icon: "heart-fill", label: "Passion", value: "Clean Code")
                    }
                    .class("about-card")
                }
                .width(5)
            }

            Section {
                Text("My Journey")
                    .font(.title2)
                    .class("section-heading text-center")
                    .margin(.top, .xLarge)
                    .margin(.bottom, .large)

                Grid {
                    TimelineItem(
                        year: "Present",
                        title: "Building & Growing",
                        description: "Working on exciting projects, contributing to open source, and continuously expanding my skill set across the Apple ecosystem and beyond."
                    )
                    TimelineItem(
                        year: "2024",
                        title: "Deep Dive into Swift",
                        description: "Focused heavily on Swift and iOS development — SwiftUI, Combine, async/await, and building production-quality applications."
                    )
                    TimelineItem(
                        year: "Earlier",
                        title: "The Beginning",
                        description: "Started my programming journey, learned the fundamentals, explored multiple languages and frameworks, and discovered my love for building software."
                    )
                }
                .columns(3)
            }

            Section {
                Text("Let's Connect")
                    .font(.title2)
                    .class("section-heading text-center")
                    .margin(.top, .xLarge)
                    .margin(.bottom, .medium)

                Text("I'm always open to new opportunities, collaborations, or just a friendly chat about tech.")
                    .class("section-lead text-center")

                HStack {
                    Link(target: "https://github.com/dev-rohit-007") {
                        Image(systemName: "github")
                            .accessibilityLabel("GitHub")
                        Span(" GitHub")
                    }
                    .linkStyle(.button)
                    .role(.dark)
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)

                    Link(target: "https://linkedin.com/in/") {
                        Image(systemName: "linkedin")
                            .accessibilityLabel("LinkedIn")
                        Span(" LinkedIn")
                    }
                    .linkStyle(.button)
                    .role(.primary)
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)

                    Link(target: "mailto:your.email@example.com") {
                        Image(systemName: "envelope-fill")
                            .accessibilityLabel("Email")
                        Span(" Email")
                    }
                    .linkStyle(.button)
                    .role(.info)
                }
                .class("text-center")
            }
            .padding(.bottom, .xLarge)
        }
        .class("about-section")
    }
}

struct QuickFact: HTML {
    let icon: String
    let label: String
    let value: String

    var body: some HTML {
        HStack {
            Text {
                Image(systemName: icon)
                    .accessibilityLabel(label)
                Span(" \(label): ")
                    .class("quick-fact-label")
                Span(value)
            }
            .font(.body)
        }
        .margin(.bottom, .small)
    }
}

struct TimelineItem: HTML {
    let year: String
    let title: String
    let description: String

    var body: some HTML {
        Card {
            Badge(year)
                .role(.primary)
                .class("tech-badge")
                .margin(.bottom, .small)

            Text(title)
                .font(.title4)
                .margin(.bottom, .small)

            Text(description)
                .foregroundStyle(.secondary)
        }
        .class("timeline-card h-100")
    }
}
