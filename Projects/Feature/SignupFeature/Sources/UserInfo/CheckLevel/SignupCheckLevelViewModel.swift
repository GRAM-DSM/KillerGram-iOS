import BaseFeature
import Combine
import DesignSystem

final class SignupCheckLevelViewModel: BaseViewModel {
    @Published var selectedLevel: PhysicalLevel = .high
    @Published var isSuccessToSignup: Bool = false

    func nextButtonDidTap() {
        self.isSuccessToSignup = true
    }
}
