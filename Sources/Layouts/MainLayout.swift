import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Head {
            MetaLink(href: "/css/custom.css", rel: "stylesheet")
        }

        Body {
            SiteNavBar()

            content
                .padding(.top, 60)

            SiteFooter()
        }
    }
}
