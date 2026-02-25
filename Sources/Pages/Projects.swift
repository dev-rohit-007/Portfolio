import Foundation
import Ignite

struct Projects: StaticPage {
    var title = "Projects"

    var body: some HTML {
        Section {
            Text("Projects")
                .font(.title1)
                .class("section-heading text-center")
                .margin(.top, .xLarge)

            Text("Here are some of the projects I've worked on. Each one taught me something new and pushed my skills further.")
                .class("section-lead text-center")

            ProjectCard(
                title: "Portfolio Website",
                description: "A developer portfolio built entirely in Swift using the Ignite static site generator. Features responsive design and is deployed via GitHub Actions to GitHub Pages. No HTML or CSS written by hand — all generated from Swift.",
                technologies: ["Swift", "Ignite", "GitHub Actions", "CI/CD"],
                githubURL: "https://github.com/dev-rohit-007/Portfolio",
                liveURL: "https://dev-rohit-007.github.io/Portfolio",
                icon: "globe",
                colorIndex: 1
            )

            ProjectCard(
                title: "Weather App",
                description: "An iOS weather application with real-time weather data, animated backgrounds that change based on conditions, hourly and weekly forecasts, and location-based automatic updates.",
                technologies: ["Swift", "SwiftUI", "Core Location", "REST API"],
                githubURL: "https://github.com/dev-rohit-007",
                icon: "cloud-sun",
                colorIndex: 2
            )

            ProjectCard(
                title: "Task Manager",
                description: "A full-featured productivity app with task categories, due dates, priority levels, reminders, and iCloud synchronization. Uses modern Swift concurrency patterns throughout.",
                technologies: ["Swift", "UIKit", "Core Data", "CloudKit", "Combine"],
                githubURL: "https://github.com/dev-rohit-007",
                icon: "check2-square",
                colorIndex: 3
            )

            ProjectCard(
                title: "Chat Application",
                description: "A real-time messaging app with group chats, media sharing, read receipts, and push notifications. Built with Firebase for real-time database sync and authentication.",
                technologies: ["Swift", "SwiftUI", "Firebase", "Push Notifications"],
                githubURL: "https://github.com/dev-rohit-007",
                icon: "chat-dots",
                colorIndex: 4
            )

            ProjectCard(
                title: "Expense Tracker",
                description: "Personal finance tracker with spending categories, monthly budgets, charts, and data export. Features Core Data persistence and beautiful SwiftUI charts for visualizations.",
                technologies: ["Swift", "SwiftUI", "Charts", "Core Data"],
                githubURL: "https://github.com/dev-rohit-007",
                icon: "wallet2",
                colorIndex: 5
            )

            ProjectCard(
                title: "CLI Toolkit",
                description: "A collection of command-line tools built with Swift Package Manager for automating development workflows — code generation, project scaffolding, and build automation.",
                technologies: ["Swift", "SPM", "ArgumentParser", "Shell"],
                githubURL: "https://github.com/dev-rohit-007",
                icon: "terminal",
                colorIndex: 6
            )
        }
        .class("showcase-section")
    }
}
