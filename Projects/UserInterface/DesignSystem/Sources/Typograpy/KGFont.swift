import SwiftUI

public struct KGFont: ViewModifier {
    public let style: KGFontStyle
    public var weight: KGFontWeight
    private let lineHeight: CGFloat

    init(style: KGFontStyle, weight: KGFontWeight) {
        self.style = style
        self.weight = weight
        self.lineHeight = weight.pretendardFont.font(size: style.size).lineHeight
    }

    public func body(content: Content) -> some View {
        content
            .font(weight.pretendardFont.swiftUIFont(size: style.size))
            .lineSpacing(lineHeight * style.lineHeight - lineHeight)
            .padding(.vertical, (lineHeight * style.lineHeight - lineHeight) / 2)
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
