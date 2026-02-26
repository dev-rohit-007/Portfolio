import Foundation
import Ignite

struct SiteFooter: HTML {
    var body: some HTML {
        Section {
            HStack {
                Text("Copyright © Rohit Mishra Portfolio 2026")
                    .class("footer-copyright")

                Section {
                    SocialLink(url: "https://twitter.com/", icon: "twitter-x", label: "Twitter")
                    SocialLink(url: "https://github.com/dev-rohit-007", icon: "github", label: "GitHub")
                    SocialLink(url: "https://linkedin.com/in/", icon: "linkedin", label: "LinkedIn")
                    SocialLink(url: "mailto:your.email@example.com", icon: "envelope-fill", label: "Email")
                }
            }
        }
        .class("site-footer")
    }
}

struct SocialLink: HTML {
    let url: String
    let icon: String
    let label: String

    var body: some HTML {
        Link(target: url) {
            Image(systemName: icon)
                .accessibilityLabel(label)
        }
        .target(.blank)
        .relationship(.noOpener, .noReferrer)
        .class("social-circle")
    }
}
