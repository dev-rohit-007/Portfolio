import Foundation
import Ignite

struct SiteFooter: HTML {
    var body: some HTML {
        Section {
            Section {
                HStack {
                    Text("© 2026 Rohit Mishra")
                        .class("footer-text")

                    HStack {
                        Link(target: "https://github.com/dev-rohit-007") {
                            Image(systemName: "github")
                                .accessibilityLabel("GitHub")
                        }
                        .target(.blank)
                        .relationship(.noOpener, .noReferrer)

                        Link(target: "https://linkedin.com/in/") {
                            Image(systemName: "linkedin")
                                .accessibilityLabel("LinkedIn")
                        }
                        .target(.blank)
                        .relationship(.noOpener, .noReferrer)

                        Link(target: "mailto:your.email@example.com") {
                            Image(systemName: "envelope-fill")
                                .accessibilityLabel("Email")
                        }
                    }
                    .font(.title4)
                }
            }
        }
        .class("site-footer mt-auto")
    }
}
