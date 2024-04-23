import SwiftUI

public struct KGToggleStyle: ToggleStyle {
    @Environment(\.isEnabled) var isEnabled: Bool

    public func makeBody(configuration: Configuration) -> some View {
        ZStack(alignment: configuration.isOn ? .trailing : .leading) {
            RoundedRectangle(cornerRadius: 17)
                .frame(width: 48, height: 24)
                .foregroundStyle(configuration.isOn ? Color.Greens.secondary : Color.Grays.gray700)

            Circle()
                .frame(width: 20, height: 20)
                .padding(2)
                .foregroundStyle(configuration.isOn ? Color.Greens.main : Color.Grays.gray400)
        }
        .onTapGesture {
            configuration.$isOn.wrappedValue.toggle()
        }
        .animation(.easeIn(duration: 0.15), value: configuration.isOn)
    }
}
