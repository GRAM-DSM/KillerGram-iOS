import BaseFeature
import Combine

final class SigninViewModel: BaseViewModel {
    @Published var email: String = ""
    @Published var password: String = ""

    func signinButtonDidTap() {
        print("Signin")
    }
}
