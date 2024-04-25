import SwiftUI

public extension View {
    func kgBackground() -> some View {
        self.background(Color.System.background.ignoresSafeArea())
    }
}
