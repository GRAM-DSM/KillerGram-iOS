import SwiftUI

public protocol SignupNameFactory {
    associatedtype SomeView: View
    func makeView(nextViewNavigateAction: @escaping () -> Void) -> SomeView
}
