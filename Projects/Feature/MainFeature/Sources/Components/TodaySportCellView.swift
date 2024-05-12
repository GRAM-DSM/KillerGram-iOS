import SwiftUI
import DesignSystem

public struct TodaySportCellView: View {
    let todaySportType: TodaySportType

    init(todaySportType: TodaySportType) {
        self.todaySportType = todaySportType
    }

    public var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 4) {
                Text("오늘의 스포츠")
                    .kgFont(.m3, weight: .semiBold, color: .Grays.gray700)

                HStack(spacing: 4) {
                    Text(todaySportType.title)
                        .kgFont(.h3, weight: .semiBold, color: .white)

                    KGIcon(.chevronRight)
                        .foregroundStyle(Color.Grays.gray900)
                        .frame(24)
                }

                Spacer()
            }
            .padding(EdgeInsets(top: 36, leading: 20, bottom: 0, trailing: 0))

            Spacer()
        }
        .frame(height: 210)
        .overlay(alignment: .trailing) {
            todaySportType.image
                .frame(size: todaySportType.imageSize)
        }
        .background {
            Color.Greens.main
                .rotationEffect(.degrees(-160))
                .offset(x: -95, y: 170)
        }
        .background(Color.Grays.gray1100)
        .clipCornerRadius(8)
    }
}
