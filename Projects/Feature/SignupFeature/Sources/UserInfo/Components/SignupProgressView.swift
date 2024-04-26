import SwiftUI
import DesignSystem

enum SignupStep: Int, CaseIterable {
    case name = 1
    case studentID = 2
    case gender = 3
    case checkLevel = 4
}

struct SignupProgressView: View {
    private let step: SignupStep

    init(step: SignupStep) {
        self.step = step
    }

    var body: some View {
        HStack(spacing: 0) {
            ForEach(SignupStep.allCases, id: \.self) { step in
                Circle()
                    .fill(self.step.rawValue >= step.rawValue ? Color.Greens.main : Color.Grays.gray900)
                    .frame(12)

                if step != .checkLevel {
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 24)
        .background {
            HStack(spacing: 0) {
                Color.Greens.secondary
                    .frame(width: 31, height: 12)

                ForEach(1...3, id: \.self) { index in
                    (index < self.step.rawValue ? Color.Greens.secondary : Color.Grays.gray1000)
                        .frame(height: 12)
                        .frame(maxWidth: .infinity)
                }

                Color.Grays.gray1000
                    .frame(width: 31, height: 12)
            }
            .background(Color.Grays.gray1000)
        }
        .padding(.vertical, 16)
        .animation(.default, value: step)
    }
}
