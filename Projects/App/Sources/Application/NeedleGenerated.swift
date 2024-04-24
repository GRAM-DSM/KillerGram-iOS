

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
private class SignupPasswordDependency778bf5389a70d7df6152Provider: SignupPasswordDependency {


    init() {

    }
}
/// ^->AppComponent->SignupPasswordComponent
private func factorye93d1d56840ff97c674ae3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupPasswordDependency778bf5389a70d7df6152Provider()
}
private class SignupEmailAuthCodeVerifyDependencyaf9da1ebf0e9e5f1b708Provider: SignupEmailAuthCodeVerifyDependency {


    init() {

    }
}
/// ^->AppComponent->SignupEmailAuthCodeVerifyComponent
private func factoryb06be35aa893adde971be3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupEmailAuthCodeVerifyDependencyaf9da1ebf0e9e5f1b708Provider()
}
private class SignupStudentIDDependencyc62f548e51245f5bf42dProvider: SignupStudentIDDependency {


    init() {

    }
}
/// ^->AppComponent->SignupStudentIDComponent
private func factorycca12bec445b4f4f6de7e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupStudentIDDependencyc62f548e51245f5bf42dProvider()
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
private class SignupEmailVerifyDependencyf9d372ac752ee19b78caProvider: SignupEmailVerifyDependency {
    var signupEmailAuthCodeVerifyFactory: any SignupEmailAuthCodeVerifyFactory {
        return appComponent.signupEmailAuthCodeVerifyFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SignupEmailVerifyComponent
private func factory3b1904c76335d70151ebf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupEmailVerifyDependencyf9d372ac752ee19b78caProvider(appComponent: parent1(component) as! AppComponent)
}
private class RootDependency3944cc797a4a88956fb5Provider: RootDependency {
    var splashFactory: any SplashFactory {
        return appComponent.splashFactory
    }
    var signinFactory: any SigninFactory {
        return appComponent.signinFactory
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
    var signupEmailVerifyFactory: any SignupEmailVerifyFactory {
        return appComponent.signupEmailVerifyFactory
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

#else
extension AppComponent: Registration {
    public func registerItems() {

        localTable["splashFactory-any SplashFactory"] = { [unowned self] in self.splashFactory as Any }
        localTable["signinFactory-any SigninFactory"] = { [unowned self] in self.signinFactory as Any }
        localTable["signupEmailVerifyFactory-any SignupEmailVerifyFactory"] = { [unowned self] in self.signupEmailVerifyFactory as Any }
        localTable["signupEmailAuthCodeVerifyFactory-any SignupEmailAuthCodeVerifyFactory"] = { [unowned self] in self.signupEmailAuthCodeVerifyFactory as Any }
        localTable["signupPasswordFactory-any SignupPasswordFactory"] = { [unowned self] in self.signupPasswordFactory as Any }
        localTable["signupNameFactory-any SignupNameFactory"] = { [unowned self] in self.signupNameFactory as Any }
        localTable["signupStudentIDFactory-any SignupStudentIDFactory"] = { [unowned self] in self.signupStudentIDFactory as Any }
        localTable["signupGenderFactory-any SignupGenderFactory"] = { [unowned self] in self.signupGenderFactory as Any }
        localTable["signupCheckLevelFactory-any SignupCheckLevelFactory"] = { [unowned self] in self.signupCheckLevelFactory as Any }
    }
}
extension SplashComponent: Registration {
    public func registerItems() {

    }
}
extension SignupPasswordComponent: Registration {
    public func registerItems() {

    }
}
extension SignupEmailAuthCodeVerifyComponent: Registration {
    public func registerItems() {

    }
}
extension SignupStudentIDComponent: Registration {
    public func registerItems() {

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
extension SignupEmailVerifyComponent: Registration {
    public func registerItems() {
        keyPathToName[\SignupEmailVerifyDependency.signupEmailAuthCodeVerifyFactory] = "signupEmailAuthCodeVerifyFactory-any SignupEmailAuthCodeVerifyFactory"
    }
}
extension RootComponent: Registration {
    public func registerItems() {
        keyPathToName[\RootDependency.splashFactory] = "splashFactory-any SplashFactory"
        keyPathToName[\RootDependency.signinFactory] = "signinFactory-any SigninFactory"
    }
}
extension SigninComponent: Registration {
    public func registerItems() {
        keyPathToName[\SigninDependency.signupEmailVerifyFactory] = "signupEmailVerifyFactory-any SignupEmailVerifyFactory"
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
    registerProviderFactory("^->AppComponent->SignupPasswordComponent", factorye93d1d56840ff97c674ae3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SignupEmailAuthCodeVerifyComponent", factoryb06be35aa893adde971be3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SignupStudentIDComponent", factorycca12bec445b4f4f6de7e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SignupGenderComponent", factory997eaa831d16af15eee5e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SignupCheckLevelComponent", factory5b23127e837152346fdae3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SignupNameComponent", factory71e8fa7f4327b1e25ed0e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SignupEmailVerifyComponent", factory3b1904c76335d70151ebf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->RootComponent", factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SigninComponent", factory2882a056d84a613debccf47b58f8f304c97af4d5)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
