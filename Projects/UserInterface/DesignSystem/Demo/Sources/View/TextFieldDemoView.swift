import SwiftUI
import DesignSystem

struct TextFieldDemoView: View {
    @State var text1: String = ""
    @State var isError1: Bool = false
    var body: some View {
        VStack {
            KGTextField(
                "Placeholder",
                text: $text1,
//                title: "제목",
                isError: isError1,
//                description: "설명입니다.",
                errorMessage: "에러입니다"
            )

            Toggle("", isOn: $isError1)
        }
    }
}

#Preview {
    TextFieldDemoView()
}
