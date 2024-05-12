import SwiftUI
import DesignSystem

public struct AlldaySportCellView: View {
    let allDaySportType: AllDaySportType

    init(allDaySportType: AllDaySportType) {
        self.allDaySportType = allDaySportType
    }

    public var body: some View {
        VStack(spacing: 4) {
            Color.Grays.gray1100
                .clipCornerRadius(8)
                .frame(height: 76)
                .overlay(alignment: .center) {
                    allDaySportType.image
                        .frame(76)
                }

            Text(allDaySportType.title)
                .kgFont(.label, weight: .regular, color: .Grays.gray400)
        }
    }
}
