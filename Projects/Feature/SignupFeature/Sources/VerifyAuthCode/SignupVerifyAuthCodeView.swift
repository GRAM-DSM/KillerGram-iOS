import DesignSystem
import SwiftUI
import BaseFeature
import ViewUtil
import SignupFeatureInterface

struct SignupVerifyAuthCodeView: View {
    private enum FocusField {
        case authCode
    }
    @FocusState private var focusField: FocusField?
    @StateObject var viewModel: SignupVerifyAuthCodeViewModel

    private let signupPasswordFactory: any SignupPasswordFactory

    init(
        viewModel: SignupVerifyAuthCodeViewModel,
        signupPasswordFactory: any SignupPasswordFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.signupPasswordFactory = signupPasswordFactory
    }

    var body: some View {
        VStack(spacing: 0) {
            NavigationTitleView(
                title: "인증번호를 입력해 주세요",
                description: "입력해주신 이메일로 인증번호를 전송해 드렸어요"
            )

            VerifyCodeTextField(
                $viewModel.authCode,
                isError: viewModel.isErrorOccurred,
                errorMessage: viewModel.errorMessage,
                onCommit: viewModel.nextButtonDidTap
            )
            .focused($focusField, equals: .authCode)

            HStack {
                Text("5:00")
                    .kgFont(.label, weight: .regular, color: .Greens.main)

                Spacer()

                Text("인증번호 재전송")
                    .kgFont(.label, weight: .regular, color: .Grays.gray400)
                    .underlineText(color: .Grays.gray400)
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 24)

            Spacer()
        }
        .bottomButton(
            text: "인증",
            isEditing: focusField != nil,
            isDisabled: viewModel.authCode.count < 4,
            action: viewModel.nextButtonDidTap
        )
        .navigationBackButton()
        .kgBackground()
        .hideKeyboardWhenTap()
        .navigate(
            to: signupPasswordFactory.makeView().eraseToAnyView(),
            when: $viewModel.isNavigatedToPassword
        )
    }
}
