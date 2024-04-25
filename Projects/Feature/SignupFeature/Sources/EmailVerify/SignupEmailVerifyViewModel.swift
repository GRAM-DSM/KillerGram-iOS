import BaseFeature
import Combine

final class SignupEmailVerifyViewModel: BaseViewModel {
    @Published var email: String = ""

    @Published var isNavigatedToEmailAuthCodeVerify: Bool = false

    func nextButtonDidTap() {
        self.isNavigatedToEmailAuthCodeVerify = true
    }
}
