import SwiftUI
import NeedleFoundation
import SigninFeatureInterface
import SignupFeatureInterface
import FindPasswordFeatureInterface

public protocol SigninDependency: Dependency {
    var signupEmailFactory: any SignupEmailFactory { get }
    var inputEmailFactory: any InputEmailFactory { get }
}

public final class SigninComponent: Component<SigninDependency>, SigninFactory {
    public func makeView() -> some View {
        SigninView(
            viewModel: .init(),
            signupEmailFactory: dependency.signupEmailFactory,
            inputEmailFactory: dependency.inputEmailFactory
        )
    }
}
