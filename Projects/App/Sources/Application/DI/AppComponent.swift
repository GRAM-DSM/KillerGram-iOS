import NeedleFoundation
import SwiftUI
import RootFeature
import RootFeatureInterface
import SplashFeature
import SplashFeatureInterface
import SigninFeature
import SigninFeatureInterface
import SignupFeature
import SignupFeatureInterface
import MainFeature
import MainFeatureInterface
import FindPasswordFeature
import FindPasswordFeatureInterface
>>>>>>> origin/develop

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
    var signinFactory: any SigninFactory {
        SigninComponent(parent: self)
    }
    // Signup
    var signupEmailFactory: any SignupEmailFactory {
        SignupEmailComponent(parent: self)
    }
    var signupVerifyAuthCode: any SignupVerifyAuthCodeFactory {
        SignupVerifyAuthCodeComponent(parent: self)
    }
    var signupPasswordFactory: any SignupPasswordFactory {
        SignupPasswordComponent(parent: self)
    }
    var signupUserInfoFlowFactory: any SignupUserInfoFlowFactory {
        SignupUserInfoFlowComponent(parent: self)
    }
    var signupNameFactory: any SignupNameFactory {
        SignupNameComponent(parent: self)
    }
    var signupStudentIDFactory: any SignupStudentIDFactory {
        SignupStudentIDComponent(parent: self)
    }
    var signupGenderFactory: any SignupGenderFactory {
        SignupGenderComponent(parent: self)
    }
    var signupCheckLevelFactory: any SignupCheckLevelFactory {
        SignupCheckLevelComponent(parent: self)
    }
    var mainFactory: any MainFactory {
        MainComponent(parent: self)
    // Find Password
    var inputEmailFactory: any InputEmailFactory {
        InputEmailComponent(parent: self)
    }
    var verifyAuthCodeFactory: any VerifyAuthCodeFactory {
        VerifyAuthCodeComponent(parent: self)
    }
    var inputNewPasswordFactory: any InputNewPasswordFactory {
        InputNewPasswordComponent(parent: self)
    }
}
