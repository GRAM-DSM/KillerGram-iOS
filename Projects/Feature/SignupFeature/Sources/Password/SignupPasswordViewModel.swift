import BaseFeature
import Combine

final class SignupPasswordViewModel: BaseViewModel {
    @Published var password: String = ""
    @Published var checkPassword: String = ""

    @Published var isNavigatedToName: Bool = false

    func nextButtonDidTap() {
        self.isNavigatedToName = true
    }
}
