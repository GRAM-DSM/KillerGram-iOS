import RootFeatureInterface
import NeedleFoundation
import SwiftUI
import SplashFeatureInterface

public protocol RootDependency: Dependency {
    var splashFactory: any SplashFactory { get }
}

public final class RootComponent: Component<RootDependency>, RootFactory {
    public func makeView() -> some View {
        RootView(
            splashFactory: dependency.splashFactory
        )
    }
}
