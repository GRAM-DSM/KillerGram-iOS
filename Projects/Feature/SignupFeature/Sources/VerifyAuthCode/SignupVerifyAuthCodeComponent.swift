import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupVerifyAuthCodeDependency: Dependency {
    var signupPasswordFactory: any SignupPasswordFactory { get }
}

public final class SignupVerifyAuthCodeComponent: Component<SignupVerifyAuthCodeDependency>,
                                                  SignupVerifyAuthCodeFactory {
    public func makeView() -> some View {
        SignupVerifyAuthCodeView(
            viewModel: .init(),
            signupPasswordFactory: dependency.signupPasswordFactory
        )
    }
}
