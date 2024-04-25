import SwiftUI

public struct KGButton: View {
    let text: String
    let isEditing: Bool
    let action: () -> Void

    public init(
        text: String,
        isEditing: Bool = false,
        action: @escaping () -> Void = {}
    ) {
        self.text = text
        self.isEditing = isEditing
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(text)
                .multilineTextAlignment(.center)
        }
        .kgStyle(isEditing: isEditing)
        .padding(.vertical, isEditing ? 0 : 16)
        .padding(.horizontal, isEditing ? 0 : 24)
        .animation(.easeIn(duration: 0.2), value: isEditing)
    }
}
