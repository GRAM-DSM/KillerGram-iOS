import SwiftUI

public struct KGTextField: View {
//    @Environment(\.isEnabled) private var isEnabled: Bool
    var title: String
    var label: String
    @Binding var text: String
    var isError: Bool
    var description: String
    var errorMessage: String
    var onCommit: () -> Void
    @FocusState var isFocused: Bool
    private var isErrorAndNotEmpty: Bool {
        isError && !errorMessage.isEmpty
    }

    public init(
        _ label: String = "",
        text: Binding<String>,
        title: String = "",
        isError: Bool = false,
        description: String = "",
        errorMessage: String = "",
        onCommit: @escaping () -> Void = {}
    ) {
        self.label = label
        _text = text
        self.title = title
        self.isError = isError
        self.description = description
        self.errorMessage = errorMessage
        self.onCommit = onCommit
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            if !title.isEmpty {
                Text(title)
                    .kgFont(.label, weight: .regular, color: .Grays.gray800)
            }

            ZStack(alignment: .leading) {
                Text(label)
                    .kgFont(.m3, weight: .regular, color: .Grays.gray800)
                    .opacity(text.isEmpty ? 1 : 0)

                TextField("", text: $text)
                    .kgFont(.m3, weight: .regular, color: .Grays.white)
                    .focused($isFocused)
                    .onSubmit(onCommit)
            }
            .padding(16)
            .background(Color.Grays.gray1000)
            .clipCornerRadius(8)
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(
                        isErrorAndNotEmpty ? Color.System.red : .clear,
                        lineWidth: 1
                    )
            }

            if !description.isEmpty || isErrorAndNotEmpty {
                Text(isErrorAndNotEmpty ? errorMessage : description)
                    .kgFont(.label, weight: .regular, color: isErrorAndNotEmpty ? .System.red : .Grays.gray800)
            }
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 24)
        .background(.gray)
        .animation(.easeIn(duration: 0.2), value: isErrorAndNotEmpty)
        .animation(.easeIn(duration: 0.2), value: isFocused)
    }
}
