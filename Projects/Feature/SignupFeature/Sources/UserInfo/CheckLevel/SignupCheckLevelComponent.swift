import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupCheckLevelDependency: Dependency {
}

public final class SignupCheckLevelComponent: Component<SignupCheckLevelDependency>, SignupCheckLevelFactory {
    public func makeView(nextViewNavigateAction: @escaping () -> Void) -> some View {
        SignupCheckLevelView(
            viewModel: .init(nextViewNavigateAction: nextViewNavigateAction)
        )
    }
}
