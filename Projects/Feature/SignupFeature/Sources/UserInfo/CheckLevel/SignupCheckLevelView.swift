import DesignSystem
import SwiftUI
import BaseFeature

struct SignupCheckLevelView: View {
    @StateObject var viewModel: SignupCheckLevelViewModel

    init(
        viewModel: SignupCheckLevelViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        Text("SignupCheckLevelView")
    }
}
