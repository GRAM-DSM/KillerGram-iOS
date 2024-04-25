import DesignSystem
import SwiftUI
import BaseFeature
import SignupFeatureInterface
import ViewUtil

struct SignupPasswordView: View {
    private enum FocusField {
        case password
        case checkPassword
    }
    @FocusState private var focusField: FocusField?
    @StateObject var viewModel: SignupPasswordViewModel

    private let signupNameFactory: any SignupNameFactory

    init(
        viewModel: SignupPasswordViewModel,
        signupNameFactory: any SignupNameFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.signupNameFactory = signupNameFactory
    }

    var body: some View {
        VStack(spacing: 0) {
            NavigationTitleView(
                title: "비밀번호를 입력해 주세요",
                description: "비밀번호는 영어와 숫자를 조합해 만들어 주세요"
            )

            KGTextField(
                "비밀번호(8~12자)를 입력해 주세요",
                text: $viewModel.password,
                title: "비밀번호",
                isError: viewModel.isErrorOccurred,
                errorMessage: viewModel.errorMessage,
                isSecure: true
            ) {
                self.focusField = .checkPassword
            }
            .textContentType(.password)
            .focused($focusField, equals: .password)

            KGTextField(
                "비밀번호 다시 입력해 주세요",
                text: $viewModel.checkPassword,
                title: "비밀번호 확인",
                isError: viewModel.isErrorOccurred,
                errorMessage: viewModel.errorMessage,
                isSecure: true,
                onCommit: viewModel.nextButtonDidTap
            )
            .textContentType(.password)
            .focused($focusField, equals: .checkPassword)

            Spacer()
        }
        .bottomButton(
            text: "다음",
            isEditing: focusField != nil,
            isDisabled: viewModel.password.isEmpty || viewModel.checkPassword.isEmpty,
            action: viewModel.nextButtonDidTap
        )
        .navigationBar()
        .kgBackground()
        .hideKeyboardWhenTap()
        .navigate(
            to: signupNameFactory.makeView().eraseToAnyView(),
            when: $viewModel.isNavigatedToName
        )
    }
}
