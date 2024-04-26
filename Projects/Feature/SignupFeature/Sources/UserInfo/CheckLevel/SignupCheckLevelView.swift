import DesignSystem
import SwiftUI
import BaseFeature
import SignupFeatureInterface
import ViewUtil

struct SignupCheckLevelView: View {
    @AppState var appState
    @StateObject var viewModel: SignupCheckLevelViewModel

    init(
        viewModel: SignupCheckLevelViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack(spacing: 0) {
            NavigationTitleView(
                title: "운동 실력을 알려주세요",
                description: "평소 운동을 좋아하고 잘하시는지 알려주세요"
            )

            VStack(spacing: 24) {
                LevelCheckCellView(.high, selectedLevel: $viewModel.selectedLevel)

                LevelCheckCellView(.middle, selectedLevel: $viewModel.selectedLevel)

                LevelCheckCellView(.low, selectedLevel: $viewModel.selectedLevel)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 24)

            Spacer()
        }
        .bottomButton(
            text: "완료",
            action: viewModel.nextButtonDidTap
        )
        .kgBackground()
        .hideKeyboardWhenTap()
        .onChange(of: viewModel.isSuccessToSignup) { _ in
            self.appState.sceneFlow = .main
        }
    }
}
