import BaseFeature
import Combine

final class InputEmailViewModel: BaseViewModel {
    @Published var email: String = ""

    @Published var isNavigatedToVerifyAuthCode: Bool = false

    func nextButtonDidTap() {
        self.isNavigatedToVerifyAuthCode = true
    }
}
