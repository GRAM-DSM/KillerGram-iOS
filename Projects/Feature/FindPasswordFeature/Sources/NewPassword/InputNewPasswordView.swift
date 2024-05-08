import DesignSystem
import SwiftUI
import BaseFeature
import SignupFeatureInterface
import ViewUtil

struct InputNewPasswordView: View {
    private enum FocusField {
        case password
        case checkPassword
    }
    @FocusState private var focusField: FocusField?
    @StateObject var viewModel: InputNewPasswordViewModel
    @Environment(\.rootPresentationMode) var rootPresentationMode

    init(
        viewModel: InputNewPasswordViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack(spacing: 0) {
            NavigationTitleView(
                title: "새 비밀번호를 입력해주세요",
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
        .onSuccess(of: viewModel.isSuccessToChangePassword) {
            DispatchQueue.main.async {
                self.rootPresentationMode.popToRootView()
            }
        }
    }
}
