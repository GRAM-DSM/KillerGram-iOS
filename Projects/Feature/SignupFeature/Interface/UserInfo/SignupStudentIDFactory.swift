import SwiftUI

public protocol SignupStudentIDFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
