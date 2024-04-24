import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupNameDependency: Dependency {
}

public final class SignupNameComponent: Component<SignupNameDependency>, SignupNameFactory {
    public func makeView() -> some View {
        SignupNameView(
            viewModel: .init()
        )
    }
}
