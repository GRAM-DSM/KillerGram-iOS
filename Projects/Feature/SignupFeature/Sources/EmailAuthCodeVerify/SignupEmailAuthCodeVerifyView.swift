import DesignSystem
import SwiftUI
import BaseFeature

struct SignupEmailAuthCodeVerifyView: View {
    @StateObject var viewModel: SignupEmailAuthCodeVerifyViewModel

    init(
        viewModel: SignupEmailAuthCodeVerifyViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        Text("SignupEmailAuthCodeVerifyView")
    }
}
