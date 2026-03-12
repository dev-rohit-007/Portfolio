import Foundation
import Ignite

struct SiteNavBar: HTML {
    var body: some HTML {
        NavigationBar {
            Link("Experience", target: "#experience")
            Link("Skills", target: "#skills")
            Link("Projects", target: "#projects")
            Link("Tech", target: "#tech")
            Link("About", target: "#about")
        } logo: {
            Span("Rohit Mishra")
                .class("navbar-brand-custom")
        }
        .navigationItemAlignment(.trailing)
        .background(.black)
        .position(.fixedTop)
    }
}
