import SwiftUI
import MainFeatureInterface
import DesignSystem

public struct MainView: View {
    public var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                KGImage(.smallLogo)
                    .frame(width: 154.5, height: 48)

                Spacer()

                Button {

                } label: {
                    KGIcon(.etc)
                        .frame(48)
                }
            }
            .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))

            ScrollView {
                VStack(spacing: 16) {
                    TodaySportCellView(todaySportType: .badminton)

                    HStack(spacing: 12) {
                        AlldaySportCellView(allDaySportType: .baseBall)
                        AlldaySportCellView(allDaySportType: .footBall)
                        AlldaySportCellView(allDaySportType: .health)
                        AlldaySportCellView(allDaySportType: .tableTennis)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 8)

                VStack(spacing: 8) {
                    Text("경기 기록")
                        .kgFont(.m3, weight: .regular, color: .Grays.gray800)

                    VStack(spacing: 20) {
                    }
                }
            }
            Spacer()

        }
        .kgBackground()
    }
}
