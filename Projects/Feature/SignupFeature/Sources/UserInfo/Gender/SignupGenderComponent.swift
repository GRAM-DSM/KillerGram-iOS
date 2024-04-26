import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupGenderDependency: Dependency {}

public final class SignupGenderComponent: Component<SignupGenderDependency>, SignupGenderFactory {
    public func makeView(nextViewNavigateAction: @escaping () -> Void) -> some View {
        SignupGenderView(
            viewModel: .init(nextViewNavigateAction: nextViewNavigateAction)
        )
    }
}
