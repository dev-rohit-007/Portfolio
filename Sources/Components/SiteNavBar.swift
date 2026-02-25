import Foundation
import Ignite

struct SiteNavBar: HTML {
    var body: some HTML {
        NavigationBar {
            Link("Home", target: "/")
            Link("Projects", target: Projects())
            Link("About", target: About())

            Link(target: "https://github.com/dev-rohit-007") {
                Image(systemName: "github")
                    .accessibilityLabel("GitHub")
            }
            .target(.blank)
            .relationship(.noOpener, .noReferrer)
        } logo: {
            Span("RM")
                .class("navbar-brand-custom")
        }
        .navigationItemAlignment(.trailing)
        .background(.black)
        .position(.fixedTop)
    }
}
