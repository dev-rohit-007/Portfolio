import Foundation
import Ignite

struct BlogSection: HTML {
    var body: some HTML {
        Section {
            Section {
                Text("Blog")
                    .class("swift-section-title")

                Text("Thoughts on iOS development, architecture, and engineering.")
                    .class("swift-section-subtitle")

                Section {
                    BlogCard(
                        title: "Objective-C Runtime",
                        summary: "Understanding messaging, method swizzling, introspection, and dynamic features of the Objective-C runtime.",
                        date: "Dec 5, 2024",
                        readTime: "15 min",
                        tag: "Objective-C",
                        url: "/blog/objective-c-runtime"
                    )

                    BlogCard(
                        title: "Coming Soon",
                        summary: "More articles on Swift concurrency, architecture patterns, and iOS performance optimization.",
                        date: "",
                        readTime: "",
                        tag: "Swift",
                        url: "/blog"
                    )

                    BlogCard(
                        title: "Coming Soon",
                        summary: "Deep dives into SwiftUI internals, UIKit interop, and building production-grade mobile apps.",
                        date: "",
                        readTime: "",
                        tag: "iOS",
                        url: "/blog"
                    )
                }
                .class("blog-cards-row")

                Section {
                    Link("View All Articles", target: "/blog")
                        .class("hero-btn-outline blog-more-btn")
                }
                .class("blog-more-wrapper")
            }
            .class("swift-container")
        }
        .class("section-dark")
        .id("blog")
    }
}

struct BlogCard: HTML {
    let title: String
    let summary: String
    let date: String
    let readTime: String
    let tag: String
    let url: String

    var body: some HTML {
        Section {
            Text {
                Link(target: url) {
                    Span(title)
                }
                .class("blog-card-stretched-link")
            }
            .class("blog-card-title")

            Text {
                Span(tag)
                    .class("blog-card-tag")
            }

            Text(summary)
                .class("blog-card-summary")

            if !date.isEmpty {
                Text {
                    Span(date)
                    Span(" \u{00B7} ")
                    Span(readTime)
                }
                .class("blog-card-meta")
            }
        }
        .class("blog-card")
    }
}
