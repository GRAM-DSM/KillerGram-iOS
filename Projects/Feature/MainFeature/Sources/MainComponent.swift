import SwiftUI
import NeedleFoundation
import MainFeatureInterface

public protocol MainDependency: Dependency {}

public final class MainComponent: Component<MainDependency>, MainFactory {
    public func makeView() -> some View {
        MainView()
    }
}
