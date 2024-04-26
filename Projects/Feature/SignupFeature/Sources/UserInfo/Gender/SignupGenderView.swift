import DesignSystem
import SwiftUI
import BaseFeature
import SignupFeatureInterface
import ViewUtil

struct SignupGenderView: View {
    @StateObject var viewModel: SignupGenderViewModel

    init(
        viewModel: SignupGenderViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack(spacing: 0) {
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
            action: viewModel.nextButtonDidTap
        )
        .kgBackground()
        .hideKeyboardWhenTap()
    }
}
