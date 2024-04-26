import BaseFeature
import Combine

final class SigninViewModel: BaseViewModel {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isSuccessToSignin: Bool = false

    func signinButtonDidTap() {
        self.isSuccessToSignin = true
    }
}
