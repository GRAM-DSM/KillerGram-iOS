import DesignSystem
import SwiftUI
import BaseFeature
import ViewUtil
import SignupFeatureInterface

struct SignupEmailVerifyView: View {
    private enum FocusField {
        case email
    }
    @FocusState private var focusField: FocusField?
    @StateObject var viewModel: SignupEmailVerifyViewModel

    private let signupEmailAuthCodeVerifyFactory: any SignupEmailAuthCodeVerifyFactory
    init(
        viewModel: SignupEmailVerifyViewModel,
        signupEmailAuthCodeVerifyFactory: any SignupEmailAuthCodeVerifyFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.signupEmailAuthCodeVerifyFactory = signupEmailAuthCodeVerifyFactory
    }

    var body: some View {
        VStack(spacing: 0) {
            NavigationTitleView(
                title: "이메일을 입력해 주세요",
                description: "이메일로 인증번호를 전송해 드릴게요"
            )

            KGTextField(
                "이메일을 입력해주세요",
                text: $viewModel.email,
                title: "이메일",
                isError: viewModel.isErrorOccurred,
                errorMessage: viewModel.errorMessage,
                onCommit: viewModel.nextButtonDidTap
            )
            .focused($focusField, equals: .email)

            Spacer()

            KGButton(text: "다음", isEditing: focusField != nil, action: viewModel.nextButtonDidTap)
                .disabled(viewModel.email.isEmpty)
        }
        .navigationBackButton()
        .kgBackground()
        .hideKeyboardWhenTap()
        .navigate(
            to: signupEmailAuthCodeVerifyFactory.makeView().eraseToAnyView(),
            when: $viewModel.isNavigatedToEmailAuthCodeVerify
        )
    }
}
