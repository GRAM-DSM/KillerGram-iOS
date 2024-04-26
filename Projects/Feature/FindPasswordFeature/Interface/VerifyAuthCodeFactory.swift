import SwiftUI

public protocol VerifyAuthCodeFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
