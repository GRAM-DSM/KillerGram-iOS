import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupNameDependency: Dependency {}

public final class SignupNameComponent: Component<SignupNameDependency>, SignupNameFactory {
    public func makeView(nextViewNavigateAction: @escaping () -> Void) -> some View {
        SignupNameView(
            viewModel: .init(nextViewNavigateAction: nextViewNavigateAction)
        )
    }
}
