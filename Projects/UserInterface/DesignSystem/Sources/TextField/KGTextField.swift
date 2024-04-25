import SwiftUI

public struct KGTextField: View {
//    @Environment(\.isEnabled) private var isEnabled: Bool
    var title: String
    var placeholder: String
    @Binding var text: String
    var isError: Bool
    var errorMessage: String
    var description: String
    var isSecure: Bool
    var onCommit: () -> Void
    @FocusState var isFocused: Bool
    private var isErrorAndNotEmpty: Bool {
        isError && !errorMessage.isEmpty
    }

    public init(
        _ placeholder: String = "",
        text: Binding<String>,
        title: String = "",
        isError: Bool = false,
        errorMessage: String = "",
        description: String = "",
        isSecure: Bool = false,
        onCommit: @escaping () -> Void = {}
    ) {
        self.placeholder = placeholder
        _text = text
        self.title = title
        self.isError = isError
        self.description = description
        self.errorMessage = errorMessage
        self.isSecure = isSecure
        self.onCommit = onCommit
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            if !title.isEmpty {
                Text(title)
                    .kgFont(.label, weight: .regular, color: .Grays.gray800)
            }

            ZStack(alignment: .leading) {
                Text(placeholder)
                    .kgFont(.m3, weight: .regular, color: .Grays.gray800)
                    .opacity(text.isEmpty ? 1 : 0)

                Group {
                    if isSecure {
                        SecureField("", text: $text)
                    } else {
                        TextField("", text: $text)
                    }
                }
                .kgFont(.m3, weight: .regular, color: .Grays.white)
                .focused($isFocused)
                .onSubmit(onCommit)
            }
            .padding(.horizontal, 16)
            .frame(height: 56)
            .background(Color.Grays.gray1000)
            .clipCornerRadius(8)
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(
                        isErrorAndNotEmpty ? Color.System.red : isFocused ? .Greens.main : .clear,
                        lineWidth: 1
                    )
            }

            if !description.isEmpty || isErrorAndNotEmpty {
                Text(isErrorAndNotEmpty ? errorMessage : description)
                    .kgFont(
                        .label,
                        weight: .regular,
                        color: isErrorAndNotEmpty ? .System.red : .Grays.gray800
                    )
            }
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 24)
        .animation(.easeIn(duration: 0.2), value: isError)
        .animation(.easeIn(duration: 0.2), value: isErrorAndNotEmpty)
        .animation(.easeIn(duration: 0.2), value: isFocused)
    }
}
