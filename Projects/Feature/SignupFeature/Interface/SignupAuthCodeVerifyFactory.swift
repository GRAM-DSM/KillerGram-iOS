import SwiftUI

public protocol SignupVerifyAuthCodeFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
