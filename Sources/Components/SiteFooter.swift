import Foundation
import Ignite

struct SiteFooter: HTML {
    var body: some HTML {
        Section {
//            Section {
//                Section {
//                    Text("Rohit Mishra")
//                        .class("footer-brand")
//
//                    Text("iOS Developer based in Bengaluru, India. Building high-performance mobile experiences.")
//                        .class("footer-desc")
//                }
//                .class("footer-col")
//
//                Section {
//                    Text("Links")
//                        .class("footer-heading")
//
//                    Link("GitHub", target: "https://github.com/dev-rohit-007")
//                        .target(.blank)
//                        .relationship(.noOpener, .noReferrer)
//                        .class("footer-link")
//
//                    Link("LinkedIn", target: "https://www.linkedin.com/in/rohitalgodeveloper/")
//                        .target(.blank)
//                        .relationship(.noOpener, .noReferrer)
//                        .class("footer-link")
//
//                    Link("Email", target: "mailto:rohit.algo.developer@gmail.com")
//                        .class("footer-link")
//                }
//                .class("footer-col")
//
//                Section {
//                    Text("Community")
//                        .class("footer-heading")
//
//                    Link("Stack Overflow", target: "https://stackoverflow.com")
//                        .target(.blank)
//                        .relationship(.noOpener, .noReferrer)
//                        .class("footer-link")
//
//                    Link("Swift Forums", target: "https://forums.swift.org")
//                        .target(.blank)
//                        .relationship(.noOpener, .noReferrer)
//                        .class("footer-link")
//                }
//                .class("footer-col")
//            }
//            .class("footer-grid")

            Section {
				Text {
					"© 2026 Rohit Mishra. All rights reserved | Created in Swift with"
					" "
					Link("Ignite", target: "https://github.com/twostraws/Ignite")
						.target(.newWindow)
						.relationship(.noOpener)
						.role(.none)
				}
				.class("footer-copyright")
			}
            .class("footer-bottom")
        }
        .class("site-footer")
    }
}
