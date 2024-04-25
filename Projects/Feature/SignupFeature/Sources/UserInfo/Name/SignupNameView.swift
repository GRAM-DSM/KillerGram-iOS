import DesignSystem
import SwiftUI
import BaseFeature
import SignupFeatureInterface
import ViewUtil

struct SignupNameView: View {
    private enum FocusField {
        case name
    }
    @FocusState private var focusField: FocusField?
    @StateObject var viewModel: SignupNameViewModel

    private let signupStudentIDFactory: any SignupStudentIDFactory
    init(
        viewModel: SignupNameViewModel,
        signupStudentIDFactory: any SignupStudentIDFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.signupStudentIDFactory = signupStudentIDFactory
    }

    var body: some View {
        VStack(spacing: 0) {
            SignupProgressView(step: .name)

            NavigationTitleView(
                title: "이름을 입력해 주세요",
                description: "원활한 서비스를 위해 이름을 입력해주세요"
            )

            KGTextField(
                "이름을 입력해 주세요",
                text: $viewModel.name,
                title: "이름",
                isError: viewModel.isErrorOccurred,
                errorMessage: viewModel.errorMessage,
                onCommit: viewModel.nextButtonDidTap
            )
            .textContentType(.name)
            .focused($focusField, equals: .name)

            Spacer()
        }
        .bottomButton(
            text: "다음",
            isEditing: focusField != nil,
            isDisabled: viewModel.name.isEmpty,
            action: viewModel.nextButtonDidTap
        )
        .navigationBackButton(navigationTitle: "정보 입력")
        .kgBackground()
        .hideKeyboardWhenTap()
        .navigate(
            to: signupStudentIDFactory.makeView().eraseToAnyView(),
            when: $viewModel.isNavigatedToStudentID
        )
    }
}
