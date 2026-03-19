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
    var titleSuffix = " – iOS Developer Portfolio"
    var url = URL(static: "http://localhost:8000")
    var builtInIconsEnabled = true
    var author = "Rohit Mishra"

    var homePage = Home()
    var layout = MainLayout()
}
