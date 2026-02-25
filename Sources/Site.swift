import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = PortfolioSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct PortfolioSite: Site {
    var name = "Rohit Mishra"
    var titleSuffix = " – Rohit Mishra | Developer Portfolio"
    var url = URL(static: "https://dev-rohit-007.github.io/Portfolio")
    var builtInIconsEnabled = true
    var author = "Rohit Mishra"

    var homePage = Home()
    var layout = MainLayout()

    var staticPages: [any StaticPage] {
        Projects()
        About()
    }
}
