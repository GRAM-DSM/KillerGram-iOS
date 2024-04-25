import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupEmailVerifyDependency: Dependency {
    var signupEmailAuthCodeVerifyFactory: any SignupEmailAuthCodeVerifyFactory { get }
}

public final class SignupEmailVerifyComponent: Component<SignupEmailVerifyDependency>, SignupEmailVerifyFactory {
    public func makeView() -> some View {
        SignupEmailVerifyView(
            viewModel: .init(),
            signupEmailAuthCodeVerifyFactory: dependency.signupEmailAuthCodeVerifyFactory
        )
    }
}
