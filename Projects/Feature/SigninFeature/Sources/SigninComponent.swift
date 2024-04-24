import SwiftUI
import NeedleFoundation
import SigninFeatureInterface
import SignupFeatureInterface

public protocol SigninDependency: Dependency {
    var signupEmailVerifyFactory: any SignupEmailVerifyFactory { get }
}

public final class SigninComponent: Component<SigninDependency>, SigninFactory {
    public func makeView() -> some View {
        SigninView(
            viewModel: .init(),
            signupEmailVerifyFactory: dependency.signupEmailVerifyFactory
        )
    }
}
