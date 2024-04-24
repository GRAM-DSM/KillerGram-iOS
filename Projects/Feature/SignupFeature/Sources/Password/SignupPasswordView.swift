import DesignSystem
import SwiftUI
import BaseFeature

struct SignupPasswordView: View {
    @StateObject var viewModel: SignupPasswordViewModel

    init(
        viewModel: SignupPasswordViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        Text("SignupPasswordView")
    }
}
