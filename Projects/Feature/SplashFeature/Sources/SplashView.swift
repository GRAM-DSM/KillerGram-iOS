import DesignSystem
import SwiftUI
import BaseFeature

struct SplashView: View {
    @StateObject var viewModel: SplashViewModel
    @EnvironmentObject var appState: AppState

    init(
        viewModel: SplashViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            KGImage(.logo)
                .frame(width: 254, height: 53)
        }
        .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color.System.background.ignoresSafeArea())
        .onAppear {
//            viewModel.onAppear {
//                appState.sceneFlow = .main
//            } onError: { _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                appState.sceneFlow = .auth
            }
//            }
        }
    }
}
