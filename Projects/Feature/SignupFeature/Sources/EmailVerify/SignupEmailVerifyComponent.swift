import SwiftUI
import NeedleFoundation
import SignupEmailVerifyFeatureInterface

public protocol SignupEmailVerifyDependency: Dependency {
}

public final class SignupEmailVerifyComponent: Component<SignupEmailVerifyDependency>, SignupEmailVerifyFactory {
    public func makeView() -> some View {
        SignupEmailVerifyView(
            viewModel: .init()
        )
    }
}
