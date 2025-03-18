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
}
