import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupNameDependency: Dependency {
    var signupStudentIDFactory: any SignupStudentIDFactory { get }
}

public final class SignupNameComponent: Component<SignupNameDependency>, SignupNameFactory {
    public func makeView() -> some View {
        SignupNameView(
            viewModel: .init(),
            signupStudentIDFactory: dependency.signupStudentIDFactory
        )
    }
}
