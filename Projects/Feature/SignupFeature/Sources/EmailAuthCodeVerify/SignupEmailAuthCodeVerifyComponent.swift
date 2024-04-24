import SwiftUI
import NeedleFoundation
import SignupEmailAuthCodeVerifyFeatureInterface

public protocol SignupEmailAuthCodeVerifyDependency: Dependency {
}

public final class SignupEmailAuthCodeVerifyComponent: Component<SignupEmailAuthCodeVerifyDependency>, SignupEmailAuthCodeVerifyFactory {
    public func makeView() -> some View {
        SignupEmailAuthCodeVerifyView(
            viewModel: .init()
        )
    }
}
