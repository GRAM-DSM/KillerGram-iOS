import SwiftUI

public struct NavigationTitleView: View {
    private let title: String
    private let description: String

    public init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    public var body: some View {
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
