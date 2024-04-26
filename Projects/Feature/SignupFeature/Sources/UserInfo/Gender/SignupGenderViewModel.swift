import BaseFeature
import Combine

final class SignupGenderViewModel: BaseViewModel {
    @Published var selectedGender: Gender = .woman

    private let nextViewNavigateAction: () -> Void

    init(nextViewNavigateAction: @escaping () -> Void) {
        self.nextViewNavigateAction = nextViewNavigateAction
    }

    func nextButtonDidTap() {
        self.nextViewNavigateAction()
    }
}
