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
                .kgFont(
                    .m3,
                    weight: .semiBold,
                    color: configuration.isPressed ? style.pressedForeground : style.foreground
                )
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .background(configuration.isPressed ? style.pressedBackground : style.background)
                .clipCornerRadius(isEditing ? 0 : 8)
        }
    }
}

// Color Setting
private extension KGButtonStyle.Style {
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

    var pressedBackground: Color {
        switch self {
        default:
            Color.Greens.secondary
        }
    }

    var pressedForeground: Color {
        switch self {
        default:
            Color.Grays.gray100
        }
    }
}
