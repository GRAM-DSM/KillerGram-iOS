import SwiftUI

public protocol SignupEmailFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
