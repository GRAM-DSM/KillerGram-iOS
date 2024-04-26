import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupUserInfoFlowDependency: Dependency {
    var signupNameFactory: any SignupNameFactory { get }
    var signupStudentIDFactory: any SignupStudentIDFactory { get }
    var signupGenderFactory: any SignupGenderFactory { get }
    var signupCheckLevelFactory: any SignupCheckLevelFactory { get }
}

public final class SignupUserInfoFlowComponent: Component<SignupUserInfoFlowDependency>, SignupUserInfoFlowFactory {
    public func makeView() -> some View {
        SignupUserInfoFlowView(
            viewModel: .init(),
            nameFactory: dependency.signupNameFactory,
            studentIDFactory: dependency.signupStudentIDFactory,
            genderFactory: dependency.signupGenderFactory,
            checkLevelFactory: dependency.signupCheckLevelFactory
        )
    }
}
