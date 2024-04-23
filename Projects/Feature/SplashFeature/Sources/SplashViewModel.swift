import BaseFeature
import Combine

final class SplashViewModel: BaseViewModel {
    func onAppear(
        onSuccess: @escaping () -> Void,
        onError: @escaping (Error) -> Void
    ) {
        // 자동로그인
        if true {
            // 토큰이 되면 -> 메인 뷰로
            onSuccess()
        } else {
            // 안되면 -> 로그인 뷰로
//            onError()
        }
    }
}
