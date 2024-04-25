import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Feature.RootFeature.rawValue,
    targets: [
        .interface(module: .feature(.RootFeature)),
        .implements(module: .feature(.RootFeature), dependencies: [
            .feature(target: .RootFeature, type: .interface),
            .feature(target: .BaseFeature),
            .feature(target: .SigninFeature, type: .interface),
//            .feature(target: .MainFeature, type: .interface),
            .feature(target: .SplashFeature, type: .interface)
        ]),
        .tests(module: .feature(.RootFeature), dependencies: [
            .feature(target: .RootFeature)
        ])
    ]
)
