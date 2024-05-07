import SwiftUI
import DesignSystem

enum AllDaySportType {
    case tableTennis
    case health
    case baseBall
    case footBall

    var image: KGIcon {
        switch self {
        case .tableTennis:
            KGIcon(.tablesTennis)

        case .health:
            KGIcon(.health)

        case .baseBall:
            KGIcon(.baseBall)

        case .footBall:
            KGIcon(.footBall)
        }
    }

    var title: String {
        switch self {
        case .tableTennis:
            "탁구"

        case .health:
            "헬스"

        case .baseBall:
            "야구"

        case .footBall:
            "축구"
        }
    }
}
