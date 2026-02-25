import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        HeroSection()
        FeaturedProjects()
        SkillsSection()
    }
}
