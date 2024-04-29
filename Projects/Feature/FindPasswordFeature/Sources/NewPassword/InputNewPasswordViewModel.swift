import BaseFeature
import Combine

final class InputNewPasswordViewModel: BaseViewModel {
    @Published var password: String = ""
    @Published var checkPassword: String = ""

    @Published var isSuccessToChangePassword: Bool = false

    func nextButtonDidTap() {
        self.isSuccessToChangePassword = true
    }
}
