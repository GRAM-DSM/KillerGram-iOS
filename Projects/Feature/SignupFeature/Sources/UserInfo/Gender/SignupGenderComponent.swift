import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupGenderDependency: Dependency {
    var signupCheckLevelFactory: any SignupCheckLevelFactory { get }
}

public final class SignupGenderComponent: Component<SignupGenderDependency>, SignupGenderFactory {
    public func makeView() -> some View {
        SignupGenderView(
            viewModel: .init(),
            signupCheckLevelFactory: dependency.signupCheckLevelFactory
        )
    }
}
