import SwiftUI
import NeedleFoundation
import FindPasswordFeatureInterface

public protocol VerifyAuthCodeDependency: Dependency {
    var inputNewPasswordFactory: any InputNewPasswordFactory { get }
}

public final class VerifyAuthCodeComponent: Component<VerifyAuthCodeDependency>,
                                                  VerifyAuthCodeFactory {
    public func makeView() -> some View {
        VerifyAuthCodeView(
            viewModel: .init(),
            inputNewPasswordFactory: dependency.inputNewPasswordFactory
        )
    }
}
