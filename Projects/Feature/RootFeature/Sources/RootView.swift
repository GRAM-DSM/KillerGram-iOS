import BaseFeature
import SwiftUI
import DesignSystem
import SplashFeatureInterface
import SigninFeatureInterface
import MainFeatureInterface
import ViewUtil

struct RootView: View {
    @AppState var appState
    private let splashFactory: any SplashFactory
    private let signinFactory: any SigninFactory
    private let mainFactory: any MainFactory

    public init(
        splashFactory: any SplashFactory,
        signinFactory: any SigninFactory,
        mainFactory: any MainFactory
    ) {
        self.splashFactory = splashFactory
        self.signinFactory = signinFactory
        self.mainFactory = mainFactory
    }

    var body: some View {
        NavigationView {
            ZStack {
                switch appState.sceneFlow {
                case .auth:
                    signinFactory.makeView().eraseToAnyView()
                        .environmentObject(appState)

                case .main:
                    mainFactory.makeView().eraseToAnyView()
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
}
