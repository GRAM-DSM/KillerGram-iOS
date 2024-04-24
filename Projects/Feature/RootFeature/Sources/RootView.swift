import BaseFeature
import SwiftUI
import DesignSystem
import SplashFeatureInterface
import SigninFeatureInterface
import ViewUtil

struct RootView: View {
    @AppState var appState
    private let splashFactory: any SplashFactory
    private let signinFactory: any SigninFactory

    public init(
        splashFactory: any SplashFactory,
        signinFactory: any SigninFactory
    ) {
        self.splashFactory = splashFactory
        self.signinFactory = signinFactory
    }

    var body: some View {
        ZStack {
            switch appState.sceneFlow {
            case .auth:
                signinFactory.makeView().eraseToAnyView()
                    .environmentObject(appState)

            case .main:
                EmptyView()
                    .environmentObject(appState)

            case .splash:
                splashFactory.makeView().eraseToAnyView()
                    .environmentObject(appState)
            }
        }
        .background(Color.System.background.ignoresSafeArea())
        .animation(.easeInOut, value: appState.sceneFlow)
        .transition(.opacity.animation(.easeInOut))
    }
}
