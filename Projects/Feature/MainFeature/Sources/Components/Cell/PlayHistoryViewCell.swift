import SwiftUI
import DesignSystem

struct PlayHistoryViewCell: View {
    private let isPlaying: Bool

    init(isPlaying: Bool) {
        self.isPlaying = isPlaying
    }

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 7) {
                HStack(spacing: 8) {
                    Text("축구")
                        .kgFont(.m1, weight: .semiBold, color: .Grays.white)

                    Circle()
                        .fill(Color.Grays.gray800)
                        .frame(4)

                    Text("홍승재")
                        .kgFont(.label, weight: .regular, color: .Grays.gray800)
                }

                Text("16명 중 12명 참여")
                    .kgFont(.label, weight: .regular, color: isPlaying ? .Greens.main : .Grays.gray600)
            }

            Spacer()

            Text(isPlaying ? "진행 중" : "완료")
                .kgFont(.m3, weight: .regular, color: isPlaying ? .Greens.main : .Grays.gray600)
        }
        .padding(16)
        .background(Color.Grays.gray1100)
        .clipCornerRadius(8)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(
                    isPlaying ? Color.Greens.main : .clear,
                    lineWidth: 1
                )
        }
    }
}
