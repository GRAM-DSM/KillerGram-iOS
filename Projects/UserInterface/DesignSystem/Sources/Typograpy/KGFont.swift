import SwiftUI

public struct KGFont: ViewModifier {
    public let style: KGFontStyle
    public var weight: KGFontWeight

    public func body(content: Content) -> some View {
        content
            .font(weight.pretendardFont.swiftUIFont(size: style.size))
    }
}

public extension View {
    func kgFont(_ style: KGFontStyle, weight: KGFontWeight) -> some View {
        self
            .modifier(KGFont(style: style, weight: weight))
    }

    func kgFont(_ style: KGFontStyle, weight: KGFontWeight, color: Color) -> some View {
        self
            .kgFont(style, weight: weight)
            .foregroundColor(color)
    }
}
