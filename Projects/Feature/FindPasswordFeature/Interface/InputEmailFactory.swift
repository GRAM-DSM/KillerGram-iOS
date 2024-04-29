import SwiftUI

public protocol InputEmailFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
