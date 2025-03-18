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
//   -> 엔진을 런타임에 바꿀 수 있는 `switchEngine(to:)` 입니다.
class HybridCar: Car {
    func switchEngine(to engine: Engine) {
        if self.engine == engine {
            print("[\(year) \(brand) \(model)] continue using <\(self.engine)>")
        } else {
            print("[\(year) \(brand) \(model)] switching engine from <\(self.engine.rawValue)> to <\(engine.rawValue)>")
            self.engine = engine
            print("[\(year) \(brand) \(model)] engine switched to <\(self.engine.rawValue)>")
        }
    }
}
