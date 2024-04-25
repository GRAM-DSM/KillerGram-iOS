import SwiftUI

// MARK: - Usage
extension Button {
    func kgStyle(isEditing: Bool) -> some View {
        self.buttonStyle(KGButtonStyle(isEditing: isEditing))
    }
}

public struct KGButtonStyle: ButtonStyle {
    let isEditing: Bool

    public func makeBody(configuration: Configuration) -> some View {
        AnyView(KGButton(configuration: configuration, isEditing: isEditing))
    }
}

// MARK: - green
extension KGButtonStyle {
    struct KGButton: View {
        let configuration: ButtonStyle.Configuration
        let isEditing: Bool
        @Environment(\.isEnabled) private var isEnabled: Bool

        var body: some View {
            configuration.label
                .kgFont(
                    .m3,
                    weight: .semiBold,
                    color: isEnabled ?
                    configuration.isPressed ?
                    pressedForeground :
                        enableForeground :
                        disabledForeground
                )
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .background(
                    isEnabled ?
                    configuration.isPressed ?
                    pressedBackground :
                        enableBackground :
                        disabledBackground
                )
                .clipCornerRadius(isEditing ? 0 : 8)
        }
    }
}

// Color Setting
private extension KGButtonStyle {
    static var enableBackground: Color { .Greens.main }
    static var enableForeground: Color { .Greens.secondary }
    static var pressedBackground: Color { .Greens.secondary }
    static var pressedForeground: Color { .Grays.gray100 }
    static var disabledBackground: Color { .Grays.gray1000 }
    static var disabledForeground: Color { .Grays.gray700 }
}
