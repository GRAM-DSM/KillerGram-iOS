import RootFeatureInterface
import NeedleFoundation
import SwiftUI
import SplashFeatureInterface
import SigninFeatureInterface

public protocol RootDependency: Dependency {
    var splashFactory: any SplashFactory { get }
    var signinFactory: any SigninFactory { get }
}

public final class RootComponent: Component<RootDependency>, RootFactory {
    public func makeView() -> some View {
        RootView(
            splashFactory: dependency.splashFactory,
            signinFactory: dependency.signinFactory
        )
    }
}
