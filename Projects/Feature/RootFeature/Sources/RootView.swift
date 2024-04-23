import BaseFeature
import SwiftUI

import DesignSystem

struct RootView: View {
//    @EnvironmentObject var appState: AppState
//    private let signinFactory: any SigninFactory
//    private let splashFactory: any SplashFactory
//    private let mainFactory: any MainFactory
//
//    public init(
//        signinFactory: any SigninFactory,
//        splashFactory: any SplashFactory,
//        mainFactory: any MainFactory
//    ) {
//        self.signinFactory = signinFactory
//        self.splashFactory = splashFactory
//        self.mainFactory = mainFactory
//    }

    var body: some View {
        ZStack {
//            switch appState.sceneFlow {
//            case .auth:
//                signinFactory.makeView().eraseToAnyView()
//                    .environmentObject(appState)
//
//            case .main:
//                mainFactory.makeView().eraseToAnyView()
//                    .environmentObject(appState)
//
//            case .splash:
//                splashFactory.makeView().eraseToAnyView()
//                    .environmentObject(appState)
//            }
            Text("RootView")
        }
//        .animation(.easeInOut, value: appState.sceneFlow)
        .transition(.opacity.animation(.easeInOut))
    }
}
