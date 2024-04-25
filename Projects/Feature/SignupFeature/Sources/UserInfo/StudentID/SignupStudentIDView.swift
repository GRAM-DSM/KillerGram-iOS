import DesignSystem
import SwiftUI
import BaseFeature
import SignupFeatureInterface
import ViewUtil

struct SignupStudentIDView: View {
    private enum FocusField {
        case studentID
    }
    @FocusState private var focusField: FocusField?
    @StateObject var viewModel: SignupStudentIDViewModel

    private let signupGenderFactory: any SignupGenderFactory

    init(
        viewModel: SignupStudentIDViewModel,
        signupGenderFactory: any SignupGenderFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.signupGenderFactory = signupGenderFactory
    }

    var body: some View {
        VStack(spacing: 0) {
            SignupProgressView(step: .studentID)

            NavigationTitleView(
                title: "학번을 입력해주세요",
                description: "원활한 서비스를 위해 학번을 입력해주세요"
            )

            KGTextField(
                "학번을 입력해 주세요 ex) 2417",
                text: $viewModel.studentID,
                title: "학번",
                isError: viewModel.isErrorOccurred,
                errorMessage: viewModel.errorMessage,
                onCommit: viewModel.nextButtonDidTap
            )
            .keyboardType(.numberPad)
            .limitInputCount($viewModel.studentID, limitCount: 4)
            .filterNumericInput($viewModel.studentID)
            .focused($focusField, equals: .studentID)

            Spacer()
        }
        .bottomButton(
            text: "다음",
            isEditing: focusField != nil,
            isDisabled: viewModel.studentID.isEmpty,
            action: viewModel.nextButtonDidTap
        )
        .navigationBackButton(navigationTitle: "정보 입력")
        .kgBackground()
        .hideKeyboardWhenTap()
        .navigate(
            to: signupGenderFactory.makeView().eraseToAnyView(),
            when: $viewModel.isNavigatedToGender
        )
    }
}
