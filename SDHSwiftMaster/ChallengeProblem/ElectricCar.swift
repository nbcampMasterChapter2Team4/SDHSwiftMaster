//
//  ElectricCar.swift
//  SDHSwiftMaster
//
//  Created by 서동환 on 3/18/25.
//

import Foundation

// `Car` 를 상속한 `ElectricCar` 를 설계해주세요.
// - ElectricEngine 타입의 Engine 을 사용해야합니다.
class ElectricCar: Car {
    init(
        brand: String,
        model: String,
        year: String
    ) {
        super.init(
            brand: brand,
            model: model,
            year: year,
            engine: .ElectricEngine
        )
    }
    
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
    
    override func refuel() {
        // 예외처리 2: 전기차는 주유가 불가능
        print("[\(year) \(brand) \(model)] 전기차는 주유가 불가능합니다.")
    }
}
