import Foundation
import Ignite

struct SiteNavBar: HTML {
    var body: some HTML {
        NavigationBar {
            Link("SERVICES", target: "#services")
            Link("PORTFOLIO", target: "#portfolio")
            Link("ABOUT", target: "#about")
            Link("TECH", target: "#tech")
        } logo: {
            Span("iOS Developer portfolio")
                .class("navbar-brand-custom")
        }
        .navigationItemAlignment(.trailing)
        .background(.black)
        .position(.fixedTop)
    }
}
