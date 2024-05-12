import SwiftUI
import MainFeatureInterface
import DesignSystem

struct MainView: View {
    @StateObject var viewModel: MainViewModel

    init(viewModel: MainViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
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
            .padding(.vertical, 8)
            .padding(.horizontal, 12)

            ScrollView {
                VStack(spacing: 16) {
                    TodaySportCellView(todaySportType: .badminton)

                    HStack(spacing: 12) {
                        ForEach(AllDaySportType.allCases, id: \.title) {
                            AlldaySportCellView(allDaySportType: $0)
                        }
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 8)

                VStack(alignment: .leading, spacing: 8) {
                    Text("경기 기록")
                        .kgFont(.m3, weight: .regular, color: .Grays.gray800)

                    VStack(spacing: 20) {
                        PlayHistoryViewCell(isPlaying: false)
                        PlayHistoryViewCell(isPlaying: true)
                    }
                }
                .padding(.vertical, 12)
                .padding(.horizontal, 24)
            }
        }
        .kgBackground()
    }
}
