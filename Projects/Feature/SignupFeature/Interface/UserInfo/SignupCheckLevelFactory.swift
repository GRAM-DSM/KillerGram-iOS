import SwiftUI

public protocol SignupCheckLevelFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
