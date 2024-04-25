

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
    var signupNameFactory: any SignupNameFactory {
        return appComponent.signupNameFactory
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
private class SignupEmailAuthCodeVerifyDependencyaf9da1ebf0e9e5f1b708Provider: SignupEmailAuthCodeVerifyDependency {
    var signupPasswordFactory: any SignupPasswordFactory {
        return appComponent.signupPasswordFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SignupEmailAuthCodeVerifyComponent
private func factoryb06be35aa893adde971bf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupEmailAuthCodeVerifyDependencyaf9da1ebf0e9e5f1b708Provider(appComponent: parent1(component) as! AppComponent)
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
    var signupCheckLevelFactory: any SignupCheckLevelFactory {
        return appComponent.signupCheckLevelFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SignupGenderComponent
private func factory997eaa831d16af15eee5f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupGenderDependency65e2a6565372eb41f4acProvider(appComponent: parent1(component) as! AppComponent)
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
    var signupStudentIDFactory: any SignupStudentIDFactory {
        return appComponent.signupStudentIDFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SignupNameComponent
private func factory71e8fa7f4327b1e25ed0f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SignupNameDependency860534ba64c054146b7bProvider(appComponent: parent1(component) as! AppComponent)
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
        keyPathToName[\SignupPasswordDependency.signupNameFactory] = "signupNameFactory-any SignupNameFactory"
    }
}
extension SignupEmailAuthCodeVerifyComponent: Registration {
    public func registerItems() {
        keyPathToName[\SignupEmailAuthCodeVerifyDependency.signupPasswordFactory] = "signupPasswordFactory-any SignupPasswordFactory"
    }
}
extension SignupStudentIDComponent: Registration {
    public func registerItems() {
        keyPathToName[\SignupStudentIDDependency.signupGenderFactory] = "signupGenderFactory-any SignupGenderFactory"
    }
}
extension SignupGenderComponent: Registration {
    public func registerItems() {
        keyPathToName[\SignupGenderDependency.signupCheckLevelFactory] = "signupCheckLevelFactory-any SignupCheckLevelFactory"
    }
}
extension SignupCheckLevelComponent: Registration {
    public func registerItems() {

    }
}
extension SignupNameComponent: Registration {
    public func registerItems() {
        keyPathToName[\SignupNameDependency.signupStudentIDFactory] = "signupStudentIDFactory-any SignupStudentIDFactory"
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
    registerProviderFactory("^->AppComponent->SignupPasswordComponent", factorye93d1d56840ff97c674af47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SignupEmailAuthCodeVerifyComponent", factoryb06be35aa893adde971bf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SignupStudentIDComponent", factorycca12bec445b4f4f6de7f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SignupGenderComponent", factory997eaa831d16af15eee5f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SignupCheckLevelComponent", factory5b23127e837152346fdae3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->SignupNameComponent", factory71e8fa7f4327b1e25ed0f47b58f8f304c97af4d5)
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
