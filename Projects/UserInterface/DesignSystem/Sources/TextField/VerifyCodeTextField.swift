import SwiftUI

public struct VerifyCodeTextField: View {
    @Binding var text: String
    var isError: Bool
    var errorMessage: String
    var onCommit: () -> Void
    private var isErrorAndNotEmpty: Bool {
        isError && !errorMessage.isEmpty
    }
    @FocusState var isFocused: Bool

    public init(
        _ text: Binding<String>,
        isError: Bool = false,
        errorMessage: String = "",
        onCommit: @escaping () -> Void = {}
    ) {
        _text = text
        self.isError = isError
        self.errorMessage = errorMessage
        self.onCommit = onCommit
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            ZStack(alignment: .leading) {
                HStack(spacing: 0) {
                    ForEach(0..<4) { index in
                        let str = text.count - 1 < index ? "" : text.map { String($0) }[index]
                        Text(str)
                            .kgFont(.h1, weight: .semiBold, color: .Grays.white)
                            .frame(width: 72, height: 80)
                            .background(Color.Grays.gray1000)
                            .clipCornerRadius(8)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .strokeBorder(
                                        isErrorAndNotEmpty ? Color.System.red : .clear,
                                        lineWidth: 1
                                    )
                            }

                        if index != 3 {
                            Spacer()
                        }
                    }
                }

                TextField("", text: $text)
                    .opacity(0.0000001)
                    .keyboardType(.numberPad)
                    .limitInputCount($text, limitCount: 4)
                    .filterNumericInput($text)
                    .focused($isFocused)
                    .onSubmit(onCommit)
            }
            .onTapGesture {
                self.isFocused = true
            }

            if isErrorAndNotEmpty {
                Text(errorMessage)
                    .kgFont(.label, weight: .regular, color: .System.red)
            }
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 24)
        .animation(.easeIn(duration: 0.2), value: isError)
        .animation(.easeIn(duration: 0.2), value: isErrorAndNotEmpty)
    }
}
