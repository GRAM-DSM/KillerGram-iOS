import SwiftUI
import NeedleFoundation
import SignupCheckLevelFeatureInterface

public protocol SignupCheckLevelDependency: Dependency {
}

public final class SignupCheckLevelComponent: Component<SignupCheckLevelDependency>, SignupCheckLevelFactory {
    public func makeView() -> some View {
        SignupCheckLevelView(
            viewModel: .init()
        )
    }
}
