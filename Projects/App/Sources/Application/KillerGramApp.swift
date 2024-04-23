import SwiftUI
import DesignSystem
import BaseFeature
import ViewUtil

@main
struct KillerGramApp: App {
    @StateObject var appState = AppState(sceneFlow: .splash)

    init() {
        DesignSystemFontFamily.registerAllCustomFonts()
        registerProviderFactories()
    }

    var body: some Scene {
        WindowGroup {
            AppComponent().makeRootView()
                .eraseToAnyView()
                .environmentObject(appState)
        }
    }
}
