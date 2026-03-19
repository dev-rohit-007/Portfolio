import Foundation
import Ignite

struct SiteNavBar: HTML {
    var body: some HTML {
        NavigationBar(logo: logo) {
			Link("Experience", target: "#experience")
			Link("Skills", target: "#skills")
			Link("Tech", target: "#tech")
			Link("Projects", target: "#projects")
			Link("About", target: "#about")
        }
        .navigationItemAlignment(.center)
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
