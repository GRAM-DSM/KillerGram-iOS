import SwiftUI
import DesignSystem
import ViewUtil
import SignupFeatureInterface

struct SignupUserInfoFlowView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: SignupUserInfoFlowViewModel

    private let nameFactory: any SignupNameFactory
    private let studentIDFactory: any SignupStudentIDFactory
    private let genderFactory: any SignupGenderFactory
    private let checkLevelFactory: any SignupCheckLevelFactory

    init(
        viewModel: SignupUserInfoFlowViewModel,
        nameFactory: any SignupNameFactory,
        studentIDFactory: any SignupStudentIDFactory,
        genderFactory: any SignupGenderFactory,
        checkLevelFactory: any SignupCheckLevelFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.nameFactory = nameFactory
        self.studentIDFactory = studentIDFactory
        self.genderFactory = genderFactory
        self.checkLevelFactory = checkLevelFactory
    }

    var body: some View {
        VStack(spacing: 0) {
            SignupProgressView(step: viewModel.signupStep)

            Group {
                switch viewModel.signupStep {
                case .name:
                    nameFactory.makeView(
                        nextViewNavigateAction: viewModel.nextButtonDidTap
                    )
                    .eraseToAnyView()

                case .studentID:
                    studentIDFactory.makeView(
                        nextViewNavigateAction: viewModel.nextButtonDidTap
                    )
                    .eraseToAnyView()

                case .gender:
                    genderFactory.makeView(
                        nextViewNavigateAction: viewModel.nextButtonDidTap
                    )
                    .eraseToAnyView()

                case .checkLevel:
                    checkLevelFactory.makeView(
                        nextViewNavigateAction: viewModel.nextButtonDidTap
                    )
                    .eraseToAnyView()
                }
            }
            .transition(viewModel.transition)
        }
        .animation(.default, value: viewModel.signupStep)
        .navigationBackButton(
            navigationTitle: "정보 입력",
            backAction: { viewModel.backButtonDidTap(dismiss: dismiss) }
        )
        .kgBackground()
        .hideKeyboardWhenTap()
    }
}

extension AnyTransition {
    static let backSlideTransition = AnyTransition.asymmetric(
        insertion: .move(edge: .leading),
        removal: .move(edge: .trailing)
    )

    static let nextSlideTransition = AnyTransition.asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
}
