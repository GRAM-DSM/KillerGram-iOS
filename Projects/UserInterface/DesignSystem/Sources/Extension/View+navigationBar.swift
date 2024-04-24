import SwiftUI

public typealias Icons = KGIcon.Icon

public struct NavigationBarModifier: ViewModifier {
    @Environment(\.dismiss) private var dismiss
    private let navigationTitle: String

    private let hasBackButton: Bool
    private let rightIcon: (icon: Icons, action: () -> Void)?

    init(
        navigationTitle: String,
        hasBackButton: Bool = false,
        rightIcon: (Icons, () -> Void)? = nil
    ) {
        self.navigationTitle = navigationTitle
        self.hasBackButton = hasBackButton
        self.rightIcon = rightIcon
    }

    public func body(content: Content) -> some View {
        VStack(spacing: .zero) {
            ZStack(alignment: .topLeading) {
                HStack {
                    if hasBackButton {
                        Button {
                            dismiss()
                        } label: {
                            KGIcon(.chevronLeft)
                                .frame(28)
                                .padding(12)
                        }
                    }

                    Spacer()

                    if let rightIcon {
                        Button(action: rightIcon.action) {
                            KGIcon(rightIcon.icon)
                                .frame(28)
                                .padding(12)
                        }
                    }
                }
                .frame(height: 64)
                .padding(.horizontal, 12)

                Text(navigationTitle)
                    .kgFont(.m2, weight: .semiBold, color: .Grays.white)
                    .frame(maxWidth: .infinity)
            }
            .background(Color.System.background.ignoresSafeArea(edges: .top))

            content
                .frame(maxHeight: .infinity)
        }
        .navigationBarHidden(true)
    }
}

public extension View {
    func navigationBar(
        navigationTitle: String,
        hasBackButton: Bool = false,
        rightIcon: (Icons, () -> Void)? = nil
    ) -> some View {
        modifier(
            NavigationBarModifier(
                navigationTitle: navigationTitle,
                hasBackButton: hasBackButton,
                rightIcon: rightIcon
            )
        )
    }

    func navigationBackButton(
        navigationTitle: String = ""
    ) -> some View {
        modifier(
            NavigationBarModifier(
                navigationTitle: navigationTitle,
                hasBackButton: true
            )
        )
    }
}

// SwipeGesture로 뒤로갈 수 있게 하는 extension
extension UINavigationController: ObservableObject, UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
