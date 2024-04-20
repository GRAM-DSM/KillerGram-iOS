import SwiftUI

public extension Color {
    struct Greens {}
}
public extension Color.Greens {
    static let main: Color = DesignSystemAsset.Main.main.swiftUIColor
    static let secondary: Color = DesignSystemAsset.Main.secondary.swiftUIColor
}
