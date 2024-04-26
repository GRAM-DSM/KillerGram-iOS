import BaseFeature
import Combine
import DesignSystem

final class SignupCheckLevelViewModel: BaseViewModel {
    @Published var selectedLevel: PhysicalLevel = .high
    @Published var isSuccessToSignup: Bool = false

    private let nextViewNavigateAction: () -> Void

    init(nextViewNavigateAction: @escaping () -> Void) {
        self.nextViewNavigateAction = nextViewNavigateAction
    }

    func nextButtonDidTap() {
        self.isSuccessToSignup = true

        nextViewNavigateAction()
    }
}
