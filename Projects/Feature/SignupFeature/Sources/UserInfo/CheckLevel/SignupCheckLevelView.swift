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
            SignupProgressView(step: .checkLevel)

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
            text: "다음",
//            isDisabled: viewModel.studentID.isEmpty,
            action: viewModel.nextButtonDidTap
        )
        .navigationBackButton(navigationTitle: "정보 입력")
        .kgBackground()
        .hideKeyboardWhenTap()
        .onChange(of: viewModel.isSuccessToSignup) { _ in
            self.appState.sceneFlow = .main
        }
    }
}
