import SwiftUI

public extension View {
    func onSuccess(of value: Bool, _ action: @escaping () -> Void) -> some View {
        self.onChange(of: value) { changedValue in
            if changedValue {
                action()
            }
        }
    }
}
