import BaseFeature
import Combine
import SwiftUI

final class SignupUserInfoFlowViewModel: BaseViewModel {
    @Published var signupStep: SignupStep = .name
    var transition: AnyTransition = .nextSlideTransition

    func nextButtonDidTap() {
        self.transition = .nextSlideTransition

        switch signupStep {
        case .name:
            self.signupStep = .studentID
        case .studentID:
            self.signupStep = .gender
        case .gender:
            self.signupStep = .checkLevel
        case .checkLevel:
            break
        }
    }

    func backButtonDidTap(dismiss: DismissAction) {
        self.transition = .backSlideTransition

        switch signupStep {
        case .name:
            dismiss()
        case .studentID:
            self.signupStep = .name
        case .gender:
            self.signupStep = .studentID
        case .checkLevel:
            self.signupStep = .gender
        }
    }
}
