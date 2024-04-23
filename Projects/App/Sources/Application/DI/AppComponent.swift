import NeedleFoundation
import SwiftUI
import RootFeature
import RootFeatureInterface
import SplashFeature
import SplashFeatureInterface

public final class AppComponent: BootstrapComponent {
//    private let _keychain: any Keychain
//
//    init(keychain: any Keychain) {
//        self._keychain = keychain
//    }

    public func makeRootView() -> some View {
        rootComponent.makeView()
    }

//    public var keychain: any Keychain {
//        shared {
//            _keychain
//        }
//    }

    var rootComponent: RootComponent {
        RootComponent(parent: self)
    }
}

public extension AppComponent {
    var splashFactory: any SplashFactory {
        SplashComponent(parent: self)
    }
}
