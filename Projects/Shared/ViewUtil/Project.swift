import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Shared.ViewUtil.rawValue,
    targets: [
        .implements(module: .shared(.ViewUtil))
    ]
)
