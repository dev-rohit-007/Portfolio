import Foundation
import Ignite

struct BlogList: StaticPage {
    var title = "Blog"
    var path = "/blog"
    var description = "Articles on iOS development, Swift, and Objective-C."

    var body: some HTML {
        Section {
            Section {
                Text("All Articles")
                    .class("swift-section-title")

                Text("Deep dives into iOS development, Swift internals, and mobile engineering.")
                    .class("swift-section-subtitle")

                Section {
                    BlogCardFull(
                        title: "Objective-C Runtime",
                        summary: "Understanding the dynamic features of Objective-C — messaging, method swizzling, introspection, associated objects, and runtime method resolution.",
                        date: "Dec 5, 2024",
                        readTime: "15 min read",
                        tag: "Objective-C",
                        url: "/Portfolio/blog/objective-c-runtime"
                    )
                }
                .class("blog-list-grid")
            }
            .class("swift-container")
        }
        .class("section-dark")
    }
}

struct BlogCardFull: HTML {
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
            .class("blog-card-title-full")

            Text {
                Span(tag)
                    .class("blog-card-tag")
            }

            Text(summary)
                .class("blog-card-summary-full")

            Text {
                Span(date)
                Span(" \u{00B7} ")
                Span(readTime)
            }
            .class("blog-card-meta")
        }
        .class("blog-card-full")
    }
}
