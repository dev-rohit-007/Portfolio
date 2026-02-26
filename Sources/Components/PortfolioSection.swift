import Foundation
import Ignite

struct PortfolioSection: HTML {
    var body: some HTML {
        Section {
            Text("PORTFOLIO")
                .class("section-title")

            Text("Some of my previous work")
                .class("section-subtitle")

            Grid {
                PortfolioItem(
                    name: "Weather App",
                    category: "iOS Development",
                    icon: "cloud-sun-fill",
                    colorClass: "app-icon-1"
                )
                PortfolioItem(
                    name: "Task Manager",
                    category: "iOS Development",
                    icon: "check2-square",
                    colorClass: "app-icon-2"
                )
                PortfolioItem(
                    name: "Chat App",
                    category: "iOS Development",
                    icon: "chat-dots-fill",
                    colorClass: "app-icon-3"
                )
                PortfolioItem(
                    name: "Finance Tracker",
                    category: "iOS Development",
                    icon: "graph-up",
                    colorClass: "app-icon-4"
                )
                PortfolioItem(
                    name: "News Reader",
                    category: "iOS Development",
                    icon: "newspaper",
                    colorClass: "app-icon-5"
                )
                PortfolioItem(
                    name: "Portfolio",
                    category: "Web Development",
                    icon: "globe",
                    colorClass: "app-icon-6"
                )
            }
            .columns(3)
            .class("portfolio-grid")
        }
        .class("section-white")
        .id("portfolio")
    }
}

struct PortfolioItem: HTML {
    let name: String
    let category: String
    let icon: String
    let colorClass: String

    var body: some HTML {
        Section {
            Section {
                Text {
                    Image(systemName: icon)
                        .accessibilityLabel(name)
                }
            }
            .class("app-icon \(colorClass)")

            Text(name)
                .class("portfolio-name")

            Text(category)
                .class("portfolio-category")
        }
        .class("portfolio-item")
    }
}
