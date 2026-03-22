import Foundation
import Ignite

struct SiteNavBar: HTML {
    var body: some HTML {
        NavigationBar(logo: logo) {
			Link("Home", target: "/Portfolio/")
			Link("Blog", target: "/Portfolio/blog")
			Link("Experience", target: "/Portfolio/experience")
			Link("Projects", target: "/Portfolio/#projects")
			Link("About", target: "/Portfolio/#about")
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
