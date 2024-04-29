import DesignSystem
import SwiftUI
import BaseFeature
import ViewUtil
import FindPasswordFeatureInterface

struct InputEmailView: View {
    private enum FocusField {
        case email
    }
    @FocusState private var focusField: FocusField?
    @StateObject var viewModel: InputEmailViewModel
    @Environment(\.rootPresentationMode) var rootPresentationMode

    private let verifyAuthCodeFactory: any VerifyAuthCodeFactory

    init(
        viewModel: InputEmailViewModel,
        verifyAuthCodeFactory: any VerifyAuthCodeFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.verifyAuthCodeFactory = verifyAuthCodeFactory
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
            .textContentType(.emailAddress)
            .keyboardType(.emailAddress)
            .focused($focusField, equals: .email)

            Spacer()
        }
        .bottomButton(
            text: "다음",
            isEditing: focusField != nil,
            isDisabled: viewModel.email.isEmpty,
            action: viewModel.nextButtonDidTap
        )
        .navigationBackButton()
        .kgBackground()
        .hideKeyboardWhenTap()
        .navigate(
            to: verifyAuthCodeFactory.makeView().eraseToAnyView()
                .environment(\.rootPresentationMode, rootPresentationMode),
            when: $viewModel.isNavigatedToVerifyAuthCode
        )
    }
}
