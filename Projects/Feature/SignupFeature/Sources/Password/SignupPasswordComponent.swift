import SwiftUI
import NeedleFoundation
import SignupPasswordFeatureInterface

public protocol SignupPasswordDependency: Dependency {
}

public final class SignupPasswordComponent: Component<SignupPasswordDependency>, SignupPasswordFactory {
    public func makeView() -> some View {
        SignupPasswordView(
            viewModel: .init()
        )
    }
}
