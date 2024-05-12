

import FindPasswordFeature
import FindPasswordFeatureInterface
import MainFeature
import MainFeatureInterface
import NeedleFoundation
import RootFeature
import RootFeatureInterface
import SigninFeature
import SigninFeatureInterface
import SignupFeature
import SignupFeatureInterface
import SplashFeature
import SplashFeatureInterface
import SwiftUI

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class SplashDependencye0cb7136f2ec3edfd60aProvider: SplashDependency {


    init() {

    }
}
/// ^->AppComponent->SplashComponent
private func factoryace9f05f51d68f4c0677e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SplashDependencye0cb7136f2ec3edfd60aProvider()
}
private class SignupVerifyAuthCodeDependencyc5bfc91282e270b5f35aProvider: SignupVerifyAuthCodeDependency {
    var signupPasswordFactory: any SignupPasswordFactory {
        return appComponent.signupPasswordFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SignupVerifyAuthCodeComponent
private func factoryff5803dec4bd48820d95f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupVerifyAuthCodeDependencyc5bfc91282e270b5f35aProvider(appComponent: parent1(component) as! AppComponent)
}
private class SignupPasswordDependency778bf5389a70d7df6152Provider: SignupPasswordDependency {
    var signupUserInfoFlowFactory: any SignupUserInfoFlowFactory {
        return appComponent.signupUserInfoFlowFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SignupPasswordComponent
private func factorye93d1d56840ff97c674af47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupPasswordDependency778bf5389a70d7df6152Provider(appComponent: parent1(component) as! AppComponent)
}
private class SignupStudentIDDependencyc62f548e51245f5bf42dProvider: SignupStudentIDDependency {
    var signupGenderFactory: any SignupGenderFactory {
        return appComponent.signupGenderFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SignupStudentIDComponent
private func factorycca12bec445b4f4f6de7f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupStudentIDDependencyc62f548e51245f5bf42dProvider(appComponent: parent1(component) as! AppComponent)
}
private class SignupGenderDependency65e2a6565372eb41f4acProvider: SignupGenderDependency {


    init() {

    }
}
/// ^->AppComponent->SignupGenderComponent
private func factory997eaa831d16af15eee5e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupGenderDependency65e2a6565372eb41f4acProvider()
}
private class SignupCheckLevelDependencye4ec84c7d38354a454aeProvider: SignupCheckLevelDependency {


    init() {

    }
}
/// ^->AppComponent->SignupCheckLevelComponent
private func factory5b23127e837152346fdae3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupCheckLevelDependencye4ec84c7d38354a454aeProvider()
}
private class SignupNameDependency860534ba64c054146b7bProvider: SignupNameDependency {


    init() {

    }
}
/// ^->AppComponent->SignupNameComponent
private func factory71e8fa7f4327b1e25ed0e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupNameDependency860534ba64c054146b7bProvider()
}
private class SignupUserInfoFlowDependencyc2b570f167242d15d8e8Provider: SignupUserInfoFlowDependency {
    var signupNameFactory: any SignupNameFactory {
        return appComponent.signupNameFactory
    }
    var signupStudentIDFactory: any SignupStudentIDFactory {
        return appComponent.signupStudentIDFactory
    }
    var signupGenderFactory: any SignupGenderFactory {
        return appComponent.signupGenderFactory
    }
    var signupCheckLevelFactory: any SignupCheckLevelFactory {
        return appComponent.signupCheckLevelFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SignupUserInfoFlowComponent
private func factoryce6f8b9af5f65c8e334ef47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupUserInfoFlowDependencyc2b570f167242d15d8e8Provider(appComponent: parent1(component) as! AppComponent)
}
private class SignupEmailDependency844c9e928af75b6aaa7aProvider: SignupEmailDependency {
    var signupVerifyAuthCode: any SignupVerifyAuthCodeFactory {
        return appComponent.signupVerifyAuthCode
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SignupEmailComponent
private func factory4d1ddf658c5970ef6b47f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupEmailDependency844c9e928af75b6aaa7aProvider(appComponent: parent1(component) as! AppComponent)
}
private class MainDependency7c6a5b4738b211b8e155Provider: MainDependency {


    init() {

    }
}
/// ^->AppComponent->MainComponent
private func factoryc9274e46e78e70f29c54e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MainDependency7c6a5b4738b211b8e155Provider()
}
private class RootDependency3944cc797a4a88956fb5Provider: RootDependency {
    var splashFactory: any SplashFactory {
        return appComponent.splashFactory
    }
    var signinFactory: any SigninFactory {
        return appComponent.signinFactory
    }
    var mainFactory: any MainFactory {
        return appComponent.mainFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->RootComponent
private func factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RootDependency3944cc797a4a88956fb5Provider(appComponent: parent1(component) as! AppComponent)
}
private class SigninDependencyde06a9d0b22764487733Provider: SigninDependency {
    var signupEmailFactory: any SignupEmailFactory {
        return appComponent.signupEmailFactory
    }
    var inputEmailFactory: any InputEmailFactory {
        return appComponent.inputEmailFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SigninComponent
private func factory2882a056d84a613debccf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SigninDependencyde06a9d0b22764487733Provider(appComponent: parent1(component) as! AppComponent)
}
private class VerifyAuthCodeDependencya16ab19f97e0892b555bProvider: VerifyAuthCodeDependency {
    var inputNewPasswordFactory: any InputNewPasswordFactory {
        return appComponent.inputNewPasswordFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->VerifyAuthCodeComponent
private func factoryed5ce75de1bf576b84adf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return VerifyAuthCodeDependencya16ab19f97e0892b555bProvider(appComponent: parent1(component) as! AppComponent)
}
private class InputNewPasswordDependency1149e32e41e1cfce6f6dProvider: InputNewPasswordDependency {


    init() {

    }
}
/// ^->AppComponent->InputNewPasswordComponent
private func factory27615059458a0576f404e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputNewPasswordDependency1149e32e41e1cfce6f6dProvider()
}
private class InputEmailDependency4102766a436592066e97Provider: InputEmailDependency {
    var verifyAuthCodeFactory: any VerifyAuthCodeFactory {
        return appComponent.verifyAuthCodeFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->InputEmailComponent
private func factoryf939e41ba3a1151e88f8f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return InputEmailDependency4102766a436592066e97Provider(appComponent: parent1(component) as! AppComponent)
}

#else
extension AppComponent: Registration {
    public func registerItems() {

        localTable["splashFactory-any SplashFactory"] = { [unowned self] in self.splashFactory as Any }
        localTable["signinFactory-any SigninFactory"] = { [unowned self] in self.signinFactory as Any }
        localTable["signupEmailFactory-any SignupEmailFactory"] = { [unowned self] in self.signupEmailFactory as Any }
        localTable["signupVerifyAuthCode-any SignupVerifyAuthCodeFactory"] = { [unowned self] in self.signupVerifyAuthCode as Any }
        localTable["signupPasswordFactory-any SignupPasswordFactory"] = { [unowned self] in self.signupPasswordFactory as Any }
        localTable["signupUserInfoFlowFactory-any SignupUserInfoFlowFactory"] = { [unowned self] in self.signupUserInfoFlowFactory as Any }
        localTable["signupNameFactory-any SignupNameFactory"] = { [unowned self] in self.signupNameFactory as Any }
        localTable["signupStudentIDFactory-any SignupStudentIDFactory"] = { [unowned self] in self.signupStudentIDFactory as Any }
        localTable["signupGenderFactory-any SignupGenderFactory"] = { [unowned self] in self.signupGenderFactory as Any }
        localTable["signupCheckLevelFactory-any SignupCheckLevelFactory"] = { [unowned self] in self.signupCheckLevelFactory as Any }
        localTable["mainFactory-any MainFactory"] = { [unowned self] in self.mainFactory as Any }
        localTable["inputEmailFactory-any InputEmailFactory"] = { [unowned self] in self.inputEmailFactory as Any }
        localTable["verifyAuthCodeFactory-any VerifyAuthCodeFactory"] = { [unowned self] in self.verifyAuthCodeFactory as Any }
        localTable["inputNewPasswordFactory-any InputNewPasswordFactory"] = { [unowned self] in self.inputNewPasswordFactory as Any }
    }
}
extension SplashComponent: Registration {
    public func registerItems() {

    }
}
extension SignupVerifyAuthCodeComponent: Registration {
    public func registerItems() {
        keyPathToName[\SignupVerifyAuthCodeDependency.signupPasswordFactory] = "signupPasswordFactory-any SignupPasswordFactory"
    }
}
extension SignupPasswordComponent: Registration {
    public func registerItems() {
        keyPathToName[\SignupPasswordDependency.signupUserInfoFlowFactory] = "signupUserInfoFlowFactory-any SignupUserInfoFlowFactory"
    }
}
extension SignupStudentIDComponent: Registration {
    public func registerItems() {
        keyPathToName[\SignupStudentIDDependency.signupGenderFactory] = "signupGenderFactory-any SignupGenderFactory"
    }
}
extension SignupGenderComponent: Registration {
    public func registerItems() {

    }
}
extension SignupCheckLevelComponent: Registration {
    public func registerItems() {

    }
}
extension SignupNameComponent: Registration {
    public func registerItems() {

    }
}
extension SignupUserInfoFlowComponent: Registration {
    public func registerItems() {
        keyPathToName[\SignupUserInfoFlowDependency.signupNameFactory] = "signupNameFactory-any SignupNameFactory"
        keyPathToName[\SignupUserInfoFlowDependency.signupStudentIDFactory] = "signupStudentIDFactory-any SignupStudentIDFactory"
        keyPathToName[\SignupUserInfoFlowDependency.signupGenderFactory] = "signupGenderFactory-any SignupGenderFactory"
        keyPathToName[\SignupUserInfoFlowDependency.signupCheckLevelFactory] = "signupCheckLevelFactory-any SignupCheckLevelFactory"
    }
}
extension SignupEmailComponent: Registration {
    public func registerItems() {
        keyPathToName[\SignupEmailDependency.signupVerifyAuthCode] = "signupVerifyAuthCode-any SignupVerifyAuthCodeFactory"
    }
}
extension MainComponent: Registration {
    public func registerItems() {

    }
}
extension RootComponent: Registration {
    public func registerItems() {
        keyPathToName[\RootDependency.splashFactory] = "splashFactory-any SplashFactory"
        keyPathToName[\RootDependency.signinFactory] = "signinFactory-any SigninFactory"
        keyPathToName[\RootDependency.mainFactory] = "mainFactory-any MainFactory"
    }
}
extension SigninComponent: Registration {
    public func registerItems() {
        keyPathToName[\SigninDependency.signupEmailFactory] = "signupEmailFactory-any SignupEmailFactory"
        keyPathToName[\SigninDependency.inputEmailFactory] = "inputEmailFactory-any InputEmailFactory"
    }
}
extension VerifyAuthCodeComponent: Registration {
    public func registerItems() {
        keyPathToName[\VerifyAuthCodeDependency.inputNewPasswordFactory] = "inputNewPasswordFactory-any InputNewPasswordFactory"
    }
}
extension InputNewPasswordComponent: Registration {
    public func registerItems() {

    }
}
extension InputEmailComponent: Registration {
    public func registerItems() {
        keyPathToName[\InputEmailDependency.verifyAuthCodeFactory] = "verifyAuthCodeFactory-any VerifyAuthCodeFactory"
    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->AppComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->AppComponent->SplashComponent", factoryace9f05f51d68f4c0677e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SignupVerifyAuthCodeComponent", factoryff5803dec4bd48820d95f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SignupPasswordComponent", factorye93d1d56840ff97c674af47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SignupStudentIDComponent", factorycca12bec445b4f4f6de7f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SignupGenderComponent", factory997eaa831d16af15eee5e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SignupCheckLevelComponent", factory5b23127e837152346fdae3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SignupNameComponent", factory71e8fa7f4327b1e25ed0e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SignupUserInfoFlowComponent", factoryce6f8b9af5f65c8e334ef47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SignupEmailComponent", factory4d1ddf658c5970ef6b47f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->MainComponent", factoryc9274e46e78e70f29c54e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->RootComponent", factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SigninComponent", factory2882a056d84a613debccf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->VerifyAuthCodeComponent", factoryed5ce75de1bf576b84adf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->InputNewPasswordComponent", factory27615059458a0576f404e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->InputEmailComponent", factoryf939e41ba3a1151e88f8f47b58f8f304c97af4d5)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
