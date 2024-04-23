import SwiftUI
import DesignSystem

struct ButtonDemoView: View {
    var body: some View {
        VStack {
            KGButton(text: "버튼", style: .black)
            KGButton(text: "버튼", style: .green)
        }
    }
}

#Preview {
    ButtonDemoView()
}
