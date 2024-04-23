import SwiftUI
import DesignSystem

@main
struct KillerGramApp: App {
    init() {
        DesignSystemFontFamily.registerAllCustomFonts()
//        registerProviderFactori이es()
    }

    var body: some Scene {
        WindowGroup {
            AppComponent()
                .makeRootView()
//                .eraseToAnyView()
//                .environmentObject(appState)
        }
    }
}
