import DesignSystem
import SwiftUI
import BaseFeature

struct SignupGenderView: View {
    @StateObject var viewModel: SignupGenderViewModel

    init(
        viewModel: SignupGenderViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        Text("SignupGenderView")
    }
}
