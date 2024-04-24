import SwiftUI
import NeedleFoundation
import SignupFeatureInterface

public protocol SignupStudentIDDependency: Dependency {
}

public final class SignupStudentIDComponent: Component<SignupStudentIDDependency>, SignupStudentIDFactory {
    public func makeView() -> some View {
        SignupStudentIDView(
            viewModel: .init()
        )
    }
}
