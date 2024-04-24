import DesignSystem
import SwiftUI
import BaseFeature

struct SignupNameView: View {
    @StateObject var viewModel: SignupNameViewModel

    init(
        viewModel: SignupNameViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        Text("SignupNameView")
    }
}
