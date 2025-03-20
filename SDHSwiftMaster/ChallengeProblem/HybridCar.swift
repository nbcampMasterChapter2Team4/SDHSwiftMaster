//
//  HybridCar.swift
//  SDHSwiftMaster
//
//  Created by 서동환 on 3/18/25.
//

import Foundation

// `Car` 를 상속한 `HybridCar` 를 설계해주세요.
// - 새로운 엔진 타입 `HydrogenEngine` 을 정의해주세요.
// - HybridCar 에는 기존 Car 에 없던 새로운 동작이 추가됩니다.
//   ➡️ 엔진을 런타임에 바꿀 수 있는 `switchEngine(to:)` 입니다.
class HybridCar: Car {
    // UX 고민: 회생 제동
    override func stop() {
        print("[\(year) \(brand) \(model)] 정지 시작...")
        charge()
        super.stop()
    }
    
    override func charge() {
        print("[\(year) \(brand) \(model)] 정지할 때까지 회생 제동으로 배터리를 충전합니다.")
        super.charge()
    }
    
    func switchEngine(to engine: Engine) {
        // 예외처리 1: 교체할 엔진이 사용중인 엔진과 같은 경우
        if self.engine == engine {
            print("[\(year) \(brand) \(model)] <\(self.engine.rawValue)>을 계속 사용합니다.")
        } else {
            print("[\(year) \(brand) \(model)] 엔진을 <\(self.engine.rawValue)>에서 <\(engine.rawValue)>으로 교체합니다")
            self.engine = engine
            print("[\(year) \(brand) \(model)] 엔진을 <\(self.engine.rawValue)>으로 교체 완료했습니다.")
        }
    }
}
