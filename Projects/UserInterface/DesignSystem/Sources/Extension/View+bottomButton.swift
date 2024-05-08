import SwiftUI

/// Vstack으로 할 경우 버튼이 잘리는 문제가 발생
/// ZStack을 사용해 SuperView의 상단으로 띄움

private struct BottomButton: ViewModifier {
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
