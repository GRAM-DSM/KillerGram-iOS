import SwiftUI
import DesignSystem

enum PhysicalLevel {
    case high
    case middle
    case low
}

struct LevelCheckCellView: View {
    @Binding var selectedLevel: PhysicalLevel
    let level: PhysicalLevel

    init(_ level: PhysicalLevel, selectedLevel: Binding<PhysicalLevel>) {
        _selectedLevel = selectedLevel
        self.level = level
    }

    var body: some View {
        Button {
            self.selectedLevel = level
        } label: {
            HStack(spacing: 8) {
                Text(level.text)
                    .kgFont(.m1, weight: .semiBold, color: .Grays.white)

                Text(level.description)
                    .kgFont(.m3, weight: .regular, color: .Grays.gray500)
                    .lineLimit(1)

                Spacer()
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 16)
            .background(Color.Grays.gray1100)
            .clipCornerRadius(8)
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(
                        self.selectedLevel == level ? Color.Greens.main : .clear,
                        lineWidth: 1
                    )
            }
        }
    }
}

extension PhysicalLevel {
    var text: String {
        switch self {
        case .high:
            "상"
        case .middle:
            "중"
        case .low:
            "하"
        }
    }

    var description: String {
        switch self {
        case .high:
            "운동을 평소에 즐겨하며 잘 하는 편이에요"
        case .middle:
            "운동을 즐기진 않지만 못하지는 않아요"
        case .low:
            "운동을 별로 좋아하지 않아요"
        }
    }
}
