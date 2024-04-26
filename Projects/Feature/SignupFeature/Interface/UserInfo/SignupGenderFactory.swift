import SwiftUI

public protocol SignupGenderFactory {
    associatedtype SomeView: View
    func makeView(nextViewNavigateAction: @escaping () -> Void) -> SomeView
}
