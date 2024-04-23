import SwiftUI

public extension Color {
    struct System {}
}

public extension Color.System {
    static let red: Color = DesignSystemAsset.System.system.swiftUIColor
    static let background: Color = DesignSystemAsset.System.background.swiftUIColor
}
