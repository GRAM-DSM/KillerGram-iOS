import SwiftUI
import NeedleFoundation
import FindPasswordFeatureInterface

public protocol InputNewPasswordDependency: Dependency {}

public final class InputNewPasswordComponent: Component<InputNewPasswordDependency>, InputNewPasswordFactory {
    public func makeView() -> some View {
        InputNewPasswordView(
            viewModel: .init()
        )
    }
}
