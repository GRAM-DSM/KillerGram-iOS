import DesignSystem
import SwiftUI
import BaseFeature

struct SignupEmailVerifyView: View {
    @StateObject var viewModel: SignupEmailVerifyViewModel

    init(
        viewModel: SignupEmailVerifyViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        Text("SignupEmailVerifyView")
    }
}
