import SwiftUI
import DesignSystem

struct CheckBoxDemoView: View {
    @State var isOn = false
    var body: some View {
        VStack {
            KGCheckBox(isOn: $isOn)
        }
    }
}

#Preview {
    CheckBoxDemoView()
}
