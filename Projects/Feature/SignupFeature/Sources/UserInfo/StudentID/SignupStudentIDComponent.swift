import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupStudentIDDependency: Dependency {
    var signupGenderFactory: any SignupGenderFactory { get }
}

public final class SignupStudentIDComponent: Component<SignupStudentIDDependency>, SignupStudentIDFactory {
    public func makeView(nextViewNavigateAction: @escaping () -> Void) -> some View {
        SignupStudentIDView(
            viewModel: .init(nextViewNavigateAction: nextViewNavigateAction)
        )
    }
}
