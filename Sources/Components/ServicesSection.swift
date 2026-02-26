import Foundation
import Ignite

struct ServicesSection: HTML {
    var body: some HTML {
        Section {
            Text("SERVICES")
                .class("section-title")

            Text("Developing apps from scratch.")
                .class("section-subtitle")

            Grid {
                ServiceItem(
                    icon: "cart-fill",
                    title: "App Payment",
                    description: "Integrate payment SDK into your app, Stripe, Razorpay, ApplePay and more."
                )
                ServiceItem(
                    icon: "laptop",
                    title: "Responsive Design",
                    description: "Build for iPhones and iPads, one design for multiple device sizes, great fit."
                )
                ServiceItem(
                    icon: "brush",
                    title: "Intuitive UX/UI Design",
                    description: "Complex UI's for iOS apps involving custom layouts, transitions and animations."
                )
            }
            .columns(3)
        }
        .class("section-white")
        .id("services")
    }
}

struct ServiceItem: HTML {
    let icon: String
    let title: String
    let description: String

    var body: some HTML {
        Section {
            Section {
                Text {
                    Image(systemName: icon)
                        .accessibilityLabel(title)
                }
            }
            .class("service-icon-circle")

            Text(title)
                .class("service-title")

            Text(description)
                .class("service-desc")
        }
        .class("service-item")
    }
}
