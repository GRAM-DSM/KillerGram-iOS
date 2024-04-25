import BaseFeature
import Combine

final class SignupStudentIDViewModel: BaseViewModel {
    @Published var studentID: String = ""

    @Published var isNavigatedToGender: Bool = false

    func nextButtonDidTap() {
        self.isNavigatedToGender = true
    }
}
