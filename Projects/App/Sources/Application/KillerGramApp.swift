import SwiftUI
import DesignSystem
import BaseFeature
import ViewUtil

@main
struct KillerGramApp: App {
    @ObservedObject var appState = AppStateProvider(sceneFlow: .splash, rule: .student)

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
