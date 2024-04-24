import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupPasswordDependency: Dependency {
}

public final class SignupPasswordComponent: Component<SignupPasswordDependency>, SignupPasswordFactory {
    public func makeView() -> some View {
        SignupPasswordView(
            viewModel: .init()
        )
    }
}
