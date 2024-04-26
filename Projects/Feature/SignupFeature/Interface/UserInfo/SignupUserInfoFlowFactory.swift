import SwiftUI

public protocol SignupUserInfoFlowFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
