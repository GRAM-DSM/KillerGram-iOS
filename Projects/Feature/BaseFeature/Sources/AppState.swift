import SwiftUI

@propertyWrapper
public struct AppState: DynamicProperty {
    @EnvironmentObject private var object: AppStateProvider

    public var wrappedValue: AppStateProvider {
        object
    }

    public init() { }
}

public final class AppStateProvider: ObservableObject {
    @Published public var sceneFlow: SceneFlow
    @Published public var rule: RuleExample

    public init(sceneFlow: SceneFlow, rule: RuleExample) {
        self.sceneFlow = sceneFlow
        self.rule = rule
    }
}

public enum RuleExample {
    case student
    case manager
}
