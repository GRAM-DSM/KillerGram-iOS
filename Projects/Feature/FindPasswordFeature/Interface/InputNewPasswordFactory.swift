import SwiftUI

public protocol InputNewPasswordFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
