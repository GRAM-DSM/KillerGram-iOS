import SwiftUI

protocol KGFontable {
    var font: Font { get }
}

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
    case h1
    case h2
    case h3
    case m1
    case m2
    case m3
    case label

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
}

// MARK: - FontableSize
extension KGFontable where Self: RawRepresentable, Self.RawValue == CGFloat {
    var size: CGFloat {
        self.rawValue
    }
}
