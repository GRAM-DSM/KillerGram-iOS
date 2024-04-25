import SwiftUI
import Combine

public extension View {
    func filterNumericInput(_ input: Binding<String>) -> some View {
        self.onReceive(Just(input.wrappedValue)) { newValue in
            let filtered = newValue.filter { "0123456789".contains($0) }
            if filtered != newValue {
                input.wrappedValue = filtered
            }
        }
    }

    func limitInputCount(_ input: Binding<String>, limitCount: Int) -> some View {
        self.onReceive(Just(input.wrappedValue)) { _ in
            if limitCount < input.wrappedValue.count {
                input.wrappedValue = String(input.wrappedValue.prefix(limitCount))
            }
        }
    }
}
