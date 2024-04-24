import SwiftUI

public enum KGFontWeight {
    case semiBold
    case regular

    var pretendardFont: DesignSystemFontConvertible {
        switch self {
        case .semiBold:
            DesignSystemFontFamily.Pretendard.semiBold

        case .regular:
            DesignSystemFontFamily.Pretendard.regular
        }
    }
}

public enum KGFontStyle: Hashable {
    // swiftlint: disable identifier_name
    case h1
    case h2
    case h3
    case m1
    case m2
    case m3
    case label
    // swiftlint: enable identifier_name

    var size: CGFloat {
        switch self {
        case .h1:
            32
        case .h2:
            28
        case .h3:
            24
        case .m1:
            20
        case .m2:
            18
        case .m3:
            16
        case .label:
            14
        }
    }

    var lineHeight: CGFloat {
        switch self {
        case .h1, .h2:
            1.20
        case .h3:
            1.30
        case .m1, .m2, .m3, .label:
            1.50
        }
    }
}
