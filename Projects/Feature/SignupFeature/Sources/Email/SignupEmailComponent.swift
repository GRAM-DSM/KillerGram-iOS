import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupEmailDependency: Dependency {
    var signupVerifyAuthCode: any SignupVerifyAuthCodeFactory { get }
}

public final class SignupEmailComponent: Component<SignupEmailDependency>, SignupEmailFactory {
    public func makeView() -> some View {
        SignupEmailView(
            viewModel: .init(),
            signupVerifyAuthCode: dependency.signupVerifyAuthCode
        )
    }
}
