import BaseFeature
import Combine

final class SigninViewModel: BaseViewModel {
    @Published var email: String = ""
    @Published var password: String = ""

    @Published var isNavigatedToSignup: Bool = false
    @Published var isNavigatedToFindPassword: Bool = false

    func signinButtonDidTap() {
        print("Signin")
    }

    func signupButtonDidTap() {
        self.isNavigatedToSignup = true
    }

    func findPasswordButtonDidTap() {
        self.isNavigatedToFindPassword = true
    }
}
