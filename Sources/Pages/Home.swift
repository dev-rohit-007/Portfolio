import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        HeroSection()
        ServicesSection()
        PortfolioSection()
        AboutSection()
        TechSection()
    }
}
