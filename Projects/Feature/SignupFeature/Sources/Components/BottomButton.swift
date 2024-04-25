import SwiftUI
import DesignSystem

struct BottomButton: ViewModifier {
    let text: String
    let isEditing: Bool
    let isDisabled: Bool
    let action: () -> Void

    init(
        text: String,
        isEditing: Bool,
        isDisabled: Bool,
        action: @escaping () -> Void = {}
    ) {
        self.text = text
        self.isEditing = isEditing
        self.isDisabled = isDisabled
        self.action = action
    }

    func body(content: Content) -> some View {
        ZStack(alignment: .bottom) {
            content

            KGButton(text: text, isEditing: isEditing, action: action)
                .disabled(isDisabled)
        }
    }
}

public extension View {
    func bottomButton(
        text: String,
        isEditing: Bool = false,
        isDisabled: Bool = false,
        action: @escaping () -> Void = {}
    ) -> some View {
        modifier(
            BottomButton(
                text: text,
                isEditing: isEditing,
                isDisabled: isDisabled,
                action: action
            )
        )
    }
}
