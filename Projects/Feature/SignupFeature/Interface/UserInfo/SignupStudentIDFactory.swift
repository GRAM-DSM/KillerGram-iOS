import SwiftUI

public protocol SignupStudentIDFactory {
    associatedtype SomeView: View
    func makeView(nextViewNavigateAction: @escaping () -> Void) -> SomeView
}
