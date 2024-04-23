import SwiftUI

// MARK: - Usage
extension Button {
    func kgStyle(_ style: KGButtonStyle.Style, isEditing: Bool) -> some View {
        self.buttonStyle(KGButtonStyle(style: style, isEditing: isEditing))
    }
}

public struct KGButtonStyle: ButtonStyle {
    public enum Style {
        case green
        case black

        var background: Color {
            switch self {
            case .green:
                Color.Greens.main
            case .black:
                Color.Grays.gray1000
            }
        }

        var foreground: Color {
            switch self {
            case .green:
                Color.Greens.secondary
            case .black:
                Color.Grays.gray700
            }
        }
    }

    let style: Style
    let isEditing: Bool

    public func makeBody(configuration: Configuration) -> some View {
        AnyView(KGButton(configuration: configuration, style: style, isEditing: isEditing))
    }
}

// MARK: - green
extension KGButtonStyle {
    struct KGButton: View {
        let configuration: ButtonStyle.Configuration
        let style: Style
        let isEditing: Bool
        @Environment(\.isEnabled) private var isEnabled: Bool

        var body: some View {
            configuration.label
                .kgFont(.m3, weight: .semiBold, color: style.foreground)
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .background(style.background)
                .clipCornerRadius(isEditing ? 0 : 8)
        }
    }
}
