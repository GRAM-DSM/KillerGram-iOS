import SwiftUI
import DesignSystem

struct ToggleDemoView: View {
    @State var isOn = false
    var body: some View {
        VStack {
            KGToggle(isOn: $isOn)
        }
    }
}

#Preview {
    ToggleDemoView()
}
