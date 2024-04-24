import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Feature.SignupFeature.rawValue,
    targets: [
        .interface(module: .feature(.SignupFeature)),
        .implements(module: .feature(.SignupFeature), dependencies: [
            .feature(target: .SignupFeature, type: .interface),
            .feature(target: .BaseFeature)
        ]),
        .tests(module: .feature(.SignupFeature), dependencies: [
            .feature(target: .SignupFeature)
        ])
    ]
)
