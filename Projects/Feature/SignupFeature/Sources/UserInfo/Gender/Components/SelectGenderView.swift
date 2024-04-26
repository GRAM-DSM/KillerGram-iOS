import SwiftUI
import DesignSystem

enum Gender {
    case man
    case woman
}

struct SelectGenderView: View {
    let gender: Gender
    @Binding var selectedGender: Gender

    init(_ gender: Gender, selectedGender: Binding<Gender>) {
        self.gender = gender
        _selectedGender = selectedGender
    }

    var body: some View {
        Button {
            self.selectedGender = gender
        } label: {
            VStack(spacing: 12) {
                gender.image()
                    .frame(maxWidth: .infinity)
                    .background(Color.Grays.gray1100)
                    .clipCornerRadius(8)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .strokeBorder(
                                self.selectedGender == gender ? Color.Greens.main : .clear,
                                lineWidth: 1
                            )
                    }
            }
        }
    }
}

extension Gender {
    @ViewBuilder
    func image() -> some View {
        switch self {
        case .man:
            DesignSystemAsset.Images.man.swiftUIImage
                .resizable()
                .frame(width: 130, height: 128)
                .padding(.vertical, 16)

        case .woman:
            DesignSystemAsset.Images.woman.swiftUIImage
                .resizable()
                .frame(width: 113, height: 144)
                .padding(.top, 11)
                .padding(.bottom, 5)
        }
    }
}
