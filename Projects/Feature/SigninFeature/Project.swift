import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Feature.SigninFeature.rawValue,
    targets: [
        .interface(module: .feature(.SigninFeature)),
        .implements(module: .feature(.SigninFeature), dependencies: [
            .feature(target: .SigninFeature, type: .interface),
            .feature(target: .BaseFeature),
            .feature(target: .SignupFeature, type: .interface)
        ]),
        .tests(module: .feature(.SigninFeature), dependencies: [
            .feature(target: .SigninFeature)
        ])
    ]
)
