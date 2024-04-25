import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupEmailAuthCodeVerifyDependency: Dependency {
    var signupPasswordFactory: any SignupPasswordFactory { get }
}

public final class SignupEmailAuthCodeVerifyComponent: Component<SignupEmailAuthCodeVerifyDependency>,
                                                       SignupEmailAuthCodeVerifyFactory {
    public func makeView() -> some View {
        SignupEmailAuthCodeVerifyView(
            viewModel: .init(),
            signupPasswordFactory: dependency.signupPasswordFactory
        )
    }
}
