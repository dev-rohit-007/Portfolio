import Foundation
import Ignite

struct SiteNavBar: HTML {
    var body: some HTML {
        NavigationBar(logo: logo) {
			Link("Home", target: "/")
			Link("Blog", target: "/blog")
			Link("Experience", target: "/experience")
			Link("Projects", target: "/#projects")
			Link("About", target: "/#about")
        }
        .navigationItemAlignment(.leading)
        .position(.fixedTop)
        .background(.ultraThinMaterial)
		.font(font)
		.font(.lead)
		.foregroundStyle(.primary)
    }


    @InlineElementBuilder
    private var logo: some InlineElement {
    }

     private var font: Font { .pressStart2P }
}
