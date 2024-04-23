import SwiftUI

public struct KGCheckBoxStyle: ToggleStyle {
    @Environment(\.isEnabled) var isEnabled: Bool

    public func makeBody(configuration: Self.Configuration) -> some View {
        Image(.check)
            .renderingMode(.template)
            .foregroundStyle(configuration.isOn ? Color.Greens.secondary : Color.Grays.gray300)
            .frame(18)
            .background(configuration.isOn ? Color.Greens.main : Color.Grays.gray800)
            .clipCornerRadius(2)
            .padding(3)
            .onTapGesture {
                withAnimation(.easeIn(duration: 0.1)) {
                    configuration.isOn.toggle()
                }
            }
    }
}
