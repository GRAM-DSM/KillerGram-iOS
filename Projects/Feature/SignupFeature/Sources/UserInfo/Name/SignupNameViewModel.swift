import BaseFeature
import Combine

final class SignupNameViewModel: BaseViewModel {
    @Published var name: String = ""

    @Published var isNavigatedToStudentID: Bool = false

    func nextButtonDidTap() {
        self.isNavigatedToStudentID = true
    }
}
