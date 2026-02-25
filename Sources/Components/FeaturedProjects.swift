import Foundation
import Ignite

struct FeaturedProjects: HTML {
    var body: some HTML {
        Section {
            Text("Featured Projects")
                .font(.title2)
                .class("section-heading text-center")

            Text("A selection of projects I've built and contributed to.")
                .class("section-lead text-center")

            ProjectCard(
                title: "Portfolio Website",
                description: "This very site — a developer portfolio built entirely in Swift using the Ignite static site generator, deployed on GitHub Pages. Clean, responsive design with zero JavaScript written by hand.",
                technologies: ["Swift", "Ignite", "GitHub Pages"],
                githubURL: "https://github.com/dev-rohit-007/Portfolio",
                liveURL: "https://dev-rohit-007.github.io/Portfolio",
                icon: "globe",
                colorIndex: 1
            )

            ProjectCard(
                title: "Weather App",
                description: "A beautiful iOS weather app with real-time forecasts, animated backgrounds, and location-based weather updates using Core Location and OpenWeather API.",
                technologies: ["Swift", "SwiftUI", "Core Location", "API"],
                githubURL: "https://github.com/dev-rohit-007",
                icon: "cloud-sun",
                colorIndex: 2
            )

            ProjectCard(
                title: "Task Manager",
                description: "A productivity app with task categories, reminders, and iCloud sync. Built using modern Swift concurrency and Core Data for persistence.",
                technologies: ["Swift", "UIKit", "Core Data", "CloudKit"],
                githubURL: "https://github.com/dev-rohit-007",
                icon: "check2-square",
                colorIndex: 3
            )

            Section {
                Link("View All Projects →", target: Projects())
                    .linkStyle(.button)
                    .role(.primary)
            }
            .class("text-center")
            .margin(.top, .large)
        }
        .class("showcase-section")
    }
}
