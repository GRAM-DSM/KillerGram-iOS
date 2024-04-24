import SwiftUI

public struct KGIcon: View {
    public enum Icon {
        case chevronLeft
    }

    private var icon: Icon
    private var renderingMode: SwiftUI.Image.TemplateRenderingMode

    public init(
        _ icon: Icon,
        renderingMode: SwiftUI.Image.TemplateRenderingMode = .original
    ) {
        self.icon = icon
        self.renderingMode = renderingMode
    }

    public var body: some View {
        jobisToImage()
            .resizable()
            .renderingMode(renderingMode)
    }

    private func jobisToImage() -> SwiftUI.Image {
        switch icon {
        case .chevronLeft:
            DesignSystemAsset.Icons.chevronLeft.swiftUIImage
        }
    }
}
