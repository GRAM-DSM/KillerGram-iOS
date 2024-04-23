import RootFeatureInterface
import NeedleFoundation
import SwiftUI

public protocol RootDependency: Dependency {
//    var signinFactory: any SigninFactory { get }
//    var splashFactory: any SplashFactory { get }
//    var mainFactory: any MainFactory { get }
}

public final class RootComponent: Component<RootDependency>, RootFactory {
    public func makeView() -> some View {
        RootView(
//            signinFactory: dependency.signinFactory,
//            splashFactory: dependency.splashFactory,
//            mainFactory: dependency.mainFactory
        )
    }
}
