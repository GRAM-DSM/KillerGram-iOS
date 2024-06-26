import ConfigurationPlugin
import DependencyPlugin
import EnvironmentPlugin
import Foundation
import ProjectDescription
import ProjectDescriptionHelpers

let configurations: [Configuration] = [
    .debug(name: .dev, xcconfig: .relativeToXCConfig(type: .dev, name: env.name)),
    .debug(name: .stage, xcconfig: .relativeToXCConfig(type: .stage, name: env.name)),
    .release(name: .prod, xcconfig: .relativeToXCConfig(type: .prod, name: env.name))
]

let settings: Settings = .settings(
    base: env.baseSetting,
    configurations: configurations,
    defaultSettings: .recommended
)

let scripts: [TargetScript] = generateEnvironment.appScripts

let targets: [Target] = [
    .init(
        name: env.name,
        destinations: env.destinations,
        product: .app,
        bundleId: "\(env.organizationName).\(env.name)",
        deploymentTargets: env.deploymentTargets,
        infoPlist: .file(path: "Support/Info.plist"),
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        scripts: scripts,
        dependencies: ModulePaths.Feature.allCases.map { TargetDependency.feature(target: $0) }
        + ModulePaths.Domain.allCases.map { TargetDependency.domain(target: $0) }
        + [
            .core(target: .CoreKit),
            .SPM.Needle
        ],
        settings: .settings(base: env.baseSetting)
    )
]

let schemes: [Scheme] = [
    .init(
        name: "\(env.name)-DEV",
        shared: true,
        buildAction: .buildAction(targets: ["\(env.name)"]),
        runAction: .runAction(configuration: .dev),
        archiveAction: .archiveAction(configuration: .dev),
        profileAction: .profileAction(configuration: .dev),
        analyzeAction: .analyzeAction(configuration: .dev)
    ),
    .init(
        name: "\(env.name)-STAGE",
        shared: true,
        buildAction: .buildAction(targets: ["\(env.name)"]),
        runAction: .runAction(configuration: .stage),
        archiveAction: .archiveAction(configuration: .stage),
        profileAction: .profileAction(configuration: .stage),
        analyzeAction: .analyzeAction(configuration: .stage)
    ),
    .init(
        name: "\(env.name)-PROD",
        shared: true,
        buildAction: .buildAction(targets: ["\(env.name)"]),
        runAction: .runAction(configuration: .prod),
        archiveAction: .archiveAction(configuration: .prod),
        profileAction: .profileAction(configuration: .prod),
        analyzeAction: .analyzeAction(configuration: .prod)
    )
]

let project = Project(
    name: env.name,
    organizationName: env.organizationName,
    settings: settings,
    targets: targets,
    schemes: schemes
)
