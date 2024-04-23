import SwiftUI
import DesignSystem

@main
struct KGDesignSystemDemoView: App {
    init() {
        DesignSystemFontFamily.registerAllCustomFonts()
    }

    var body: some Scene {
        WindowGroup {
            DesignSystemPlaygroundView()
        }
    }
}

struct DesignSystemPlaygroundView: View {
    let list: [(String, AnyView)] = [
        ("Typograpy", AnyView(TypograpyDemoView())),
        ("Button", AnyView(ButtonDemoView())),
        ("TextField", AnyView(TextFieldDemoView()))
    ]

    var body: some View {
        NavigationView {
            List(list, id: \.0) { item in
                NavigationLink {
                    item.1
                } label: {
                    Text(item.0)
                }
            }
            .navigationTitle("DesignSystem")
            .frame(maxHeight: .infinity)
        }
    }
}
