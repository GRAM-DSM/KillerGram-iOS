import BaseFeature
import SwiftUI
import DesignSystem
import SplashFeatureInterface
import ViewUtil

struct RootView: View {
    @EnvironmentObject var appState: AppState
    private let splashFactory: any SplashFactory

    public init(
        splashFactory: any SplashFactory
    ) {
        self.splashFactory = splashFactory
    }

    var body: some View {
        ZStack {
            switch appState.sceneFlow {
            case .auth:
                EmptyView()
                    .environmentObject(appState)

            case .main:
                EmptyView()
                    .environmentObject(appState)

            case .splash:
                splashFactory.makeView().eraseToAnyView()
                    .environmentObject(appState)
            }
        }
        .animation(.easeInOut, value: appState.sceneFlow)
        .transition(.opacity.animation(.easeInOut))
    }
}
