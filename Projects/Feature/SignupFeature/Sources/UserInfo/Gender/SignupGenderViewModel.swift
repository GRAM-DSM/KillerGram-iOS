import BaseFeature
import Combine

final class SignupGenderViewModel: BaseViewModel {
//    @Published var studentID: String = ""

    @Published var isNavigatedToLevelCheck: Bool = false

    func nextButtonDidTap() {
        self.isNavigatedToLevelCheck = true
    }
}
