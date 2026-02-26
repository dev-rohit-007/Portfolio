import Foundation
import Ignite

struct AboutSection: HTML {
    var body: some HTML {
        Section {
            Text("ABOUT ME")
                .class("section-title")

            Text("")
                .class("section-subtitle")

            Text("I'm a Software Developer passionate about iOS development. Nothing would make me happier than hearing about your most daring projects. Feel free to contact me and let me know how I can help you.")
                .class("about-text")
        }
        .class("section-gray")
        .id("about")
    }
}
