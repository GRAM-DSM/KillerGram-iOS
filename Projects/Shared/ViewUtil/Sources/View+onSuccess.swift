import SwiftUI

public extension View {
    func onSuccess(of value: Bool, _ action: () -> Void) -> some View {
        if value { action() }
        return self
    }
}
