import BaseFeature
import Combine

final class SignupGenderViewModel: BaseViewModel {
    @Published var selectedGender: Gender = .woman

    @Published var isNavigatedToLevelCheck: Bool = false

    func nextButtonDidTap() {
        self.isNavigatedToLevelCheck = true
    }
}
