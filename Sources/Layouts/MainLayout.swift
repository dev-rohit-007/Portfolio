import Foundation
import Ignite

struct MainLayout: Layout {
	var body: some Document {
		Head {
			MetaLink(href: "/css/custom.css", rel: "stylesheet")
			MetaTag(name: "viewport", content: "width=device-width, initial-scale=1")
		}
		
		Body {
			SiteNavBar()

			content
				.font(.bitcount)

			SiteFooter()

			Script(file: "/js/hero-animations.js")
		}
	}
}
