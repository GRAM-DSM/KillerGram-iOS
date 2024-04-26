import DesignSystem
import SwiftUI
import BaseFeature
import ViewUtil
import SignupFeatureInterface

struct SigninView: View {
    private enum FocusField {
        case email
        case password
    }
    @AppState var appState
    @FocusState private var focusField: FocusField?
    @StateObject var viewModel: SigninViewModel

    private let signupEmailVerifyFactory: any SignupEmailVerifyFactory

    init(
        viewModel: SigninViewModel,
        signupEmailVerifyFactory: any SignupEmailVerifyFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.signupEmailVerifyFactory = signupEmailVerifyFactory
    }

    var body: some View {
        VStack(spacing: 49) {
            KGImage(.logo)
                .frame(width: 254, height: 53)
                .padding(.top, 113)

            VStack(spacing: 0) {
                KGTextField(
                    "이메일을 입력해주세요",
                    text: $viewModel.email,
                    isError: viewModel.isErrorOccurred,
                    errorMessage: viewModel.errorMessage
                ) {
                    self.focusField = .password
                }
                .focused($focusField, equals: .email)

                KGTextField(
                    "비밀번호를 입력해주세요",
                    text: $viewModel.password,
                    isError: viewModel.isErrorOccurred,
                    errorMessage: viewModel.errorMessage
                ) {
                    viewModel.signinButtonDidTap()
                }
                .focused($focusField, equals: .password)

                KGButton(
                    text: "로그인",
                    action: viewModel.signinButtonDidTap
                )

                HStack(spacing: 16) {
                    Button(action: viewModel.signupButtonDidTap) {
                        Text("회원가입")
                            .kgFont(.label, weight: .regular, color: .Grays.gray700)
                    }

                    Color.Grays.gray700
                        .frame(width: 1, height: 16)

                    Text("비밀번호 찾기")
                        .kgFont(.label, weight: .regular, color: .Grays.gray700)
                }
            }

            Spacer()
        }
        .navigate(to: signupEmailVerifyFactory.makeView().eraseToAnyView(), when: $viewModel.isNavigatedToSignup)
        .onChange(of: viewModel.isSuccessToSignin) { _ in
            self.appState.sceneFlow = .main
        }
    }
}
