import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupPasswordDependency: Dependency {
    var signupUserInfoFlowFactory: any SignupUserInfoFlowFactory { get }
}

public final class SignupPasswordComponent: Component<SignupPasswordDependency>, SignupPasswordFactory {
    public func makeView() -> some View {
        SignupPasswordView(
            viewModel: .init(),
            signupUserInfoFlowFactory: dependency.signupUserInfoFlowFactory
        )
    }
}
