import BaseFeature
import Foundation
import Combine

final class SignupVerifyAuthCodeViewModel: BaseViewModel {
    @Published var authCode: String = ""

    @Published var isNavigatedToPassword: Bool = false

    func nextButtonDidTap() {
        self.isNavigatedToPassword = true
    }
}
