import DesignSystem
import SwiftUI
import BaseFeature

struct SignupStudentIDView: View {
    @StateObject var viewModel: SignupStudentIDViewModel

    init(
        viewModel: SignupStudentIDViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        Text("SignupStudentIDView")
    }
}
