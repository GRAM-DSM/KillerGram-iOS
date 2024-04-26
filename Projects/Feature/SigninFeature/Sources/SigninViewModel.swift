import BaseFeature
import Combine

final class SigninViewModel: BaseViewModel {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isSuccessToSignin: Bool = false
    @Published var isNavigatedToSignup: Bool = false

    func signinButtonDidTap() {
        self.isSuccessToSignin = true
    }

    func signupButtonDidTap() {
        self.isNavigatedToSignup = true
    }
}
