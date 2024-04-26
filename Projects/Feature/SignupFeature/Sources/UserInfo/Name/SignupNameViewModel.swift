import BaseFeature
import Combine

final class SignupNameViewModel: BaseViewModel {
    @Published var name: String = ""

    private let nextViewNavigateAction: () -> Void

    init(nextViewNavigateAction: @escaping () -> Void) {
        self.nextViewNavigateAction = nextViewNavigateAction
    }

    func nextButtonDidTap() {
        self.nextViewNavigateAction()
    }
}
