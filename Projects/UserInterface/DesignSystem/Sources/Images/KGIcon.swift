import SwiftUI

public struct KGIcon: View {
    public enum Icon {
        case chevronLeft
        case chevronRight
        case etc
        case badminton
        case volleyBall
        case womansSports
        case basketBall
        case tablesTennis
        case footBall
        case baseBall
        case health
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

        case .chevronRight:
            DesignSystemAsset.Icons.chevronRight.swiftUIImage

        case .etc:
            DesignSystemAsset.Icons.etc.swiftUIImage

        case .badminton:
            DesignSystemAsset.Icons.badminton.swiftUIImage

        case .volleyBall:
            DesignSystemAsset.Icons.volleyBall.swiftUIImage

        case .basketBall:
            DesignSystemAsset.Icons.basketBall.swiftUIImage

        case .womansSports:
            DesignSystemAsset.Icons.womansSports.swiftUIImage

        case .health:
            DesignSystemAsset.Icons.health.swiftUIImage

        case .baseBall:
            DesignSystemAsset.Icons.baseBall.swiftUIImage

        case .footBall:
            DesignSystemAsset.Icons.footBall.swiftUIImage

        case .tablesTennis:
            DesignSystemAsset.Icons.tablesTennis.swiftUIImage
        }
    }
}
