import DesignSystem
import SwiftUI
import BaseFeature
import SignupFeatureInterface
import ViewUtil

struct SignupGenderView: View {
    @StateObject var viewModel: SignupGenderViewModel

    private let signupCheckLevelFactory: any SignupCheckLevelFactory

    init(
        viewModel: SignupGenderViewModel,
        signupCheckLevelFactory: any SignupCheckLevelFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.signupCheckLevelFactory = signupCheckLevelFactory
    }

    var body: some View {
        VStack(spacing: 0) {
            SignupProgressView(step: .gender)

            NavigationTitleView(
                title: "성별을 알려주세요",
                description: "원활한 서비스를 위해 성별을 알려주세요"
            )

            HStack(spacing: 22) {
                SelectGenderView(.woman, selectedGender: $viewModel.selectedGender)

                SelectGenderView(.man, selectedGender: $viewModel.selectedGender)
            }
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
        .navigate(
            to: signupCheckLevelFactory.makeView().eraseToAnyView(),
            when: $viewModel.isNavigatedToLevelCheck
        )
    }
}
