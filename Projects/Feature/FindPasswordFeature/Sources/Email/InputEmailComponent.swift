import SwiftUI
import NeedleFoundation
import FindPasswordFeatureInterface

public protocol InputEmailDependency: Dependency {
    var verifyAuthCodeFactory: any VerifyAuthCodeFactory { get }
}

public final class InputEmailComponent: Component<InputEmailDependency>, InputEmailFactory {
    public func makeView() -> some View {
        InputEmailView(
            viewModel: .init(),
            verifyAuthCodeFactory: dependency.verifyAuthCodeFactory
        )
    }
}
