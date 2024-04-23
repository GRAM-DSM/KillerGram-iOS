import SwiftUI

public struct KGButton: View {
    let text: String
    let style: KGButtonStyle.Style
    let isEditing: Bool
    let action: () -> Void

    public init(
        text: String,
        style: KGButtonStyle.Style = .green,
        isEditing: Bool = false,
        action: @escaping () -> Void = {}
    ) {
        self.text = text
        self.style = style
        self.isEditing = isEditing
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(text)
                .multilineTextAlignment(.center)
        }
        .kgStyle(style, isEditing: isEditing)
        .padding(.vertical, isEditing ? 0 : 16)
        .padding(.horizontal, isEditing ? 0 : 24)
    }
}
