import BaseFeature
import Combine

final class SignupStudentIDViewModel: BaseViewModel {
    @Published var studentID: String = ""

    private let nextViewNavigateAction: () -> Void

    init(nextViewNavigateAction: @escaping () -> Void) {
        self.nextViewNavigateAction = nextViewNavigateAction
    }

    func nextButtonDidTap() {
        self.nextViewNavigateAction()
    }
}
