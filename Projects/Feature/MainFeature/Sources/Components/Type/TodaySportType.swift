import SwiftUI
import DesignSystem

enum TodaySportType {
    case badminton
    case volleyball
    case basketball
    case womensSports

    var image: KGIcon {
        switch self {
        case .badminton:
            return KGIcon(.badminton)

        case .volleyball:
            return KGIcon(.volleyBall)

        case .basketball:
            return KGIcon(.basketBall)

        case .womensSports:
            return KGIcon(.womansSports)
        }
    }

    var title: String {
        switch self {
        case .badminton:
            "배드민턴"

        case .volleyball:
            "배구"

        case .basketball:
            "농구"

        case .womensSports:
            "여학생 스포츠"
        }
    }

    var imageSize: CGSize {
        switch self {
        case .badminton:
            return .init(width: 180, height: 180)

        case .volleyball:
            return .init(width: 200, height: 200)

        case .basketball:
            return .init(width: 200, height: 200)

        case .womensSports:
            return .init(width: 142, height: 180)
        }
    }
}
