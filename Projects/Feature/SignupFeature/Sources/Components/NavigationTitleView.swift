import SwiftUI
import DesignSystem

struct NavigationTitleView: View {
    let title: String
    let description: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .kgFont(.h3, weight: .semiBold, color: .white)

            Text(description)
                .kgFont(.m3, weight: .regular, color: .Grays.gray600)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 20)
        .padding(.horizontal, 24)
    }
}
