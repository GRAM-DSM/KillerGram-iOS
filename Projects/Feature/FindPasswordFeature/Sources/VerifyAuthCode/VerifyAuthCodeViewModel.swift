import BaseFeature
import Foundation
import Combine

final class VerifyAuthCodeViewModel: BaseViewModel {
    @Published var authCode: String = ""

    @Published var isNavigatedToNewPassword: Bool = false

    func nextButtonDidTap() {
        self.isNavigatedToNewPassword = true
    }
}
