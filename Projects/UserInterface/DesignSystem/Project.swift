import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

private let scripts: [TargetScript] = generateEnvironment == .dev ? [.swiftLint] : []
let project = Project.module(
    name: ModulePaths.UserInterface.DesignSystem.rawValue,
    targets: [
        .implements(
            module: .userInterface(.DesignSystem),
            product: .framework,
            spec: .init(resources: ["Resources/**"], scripts: scripts)
        ),
        .demo(
            module: .userInterface(.DesignSystem),
            spec: .init(
                scripts: scripts,
                dependencies: [
                    .userInterface(target: .DesignSystem)
                ]
            )
        )
    ]
)
