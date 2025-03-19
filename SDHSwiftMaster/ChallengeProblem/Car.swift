//
//  Car.swift
//  SDHSwiftMaster
//
//  Created by 서동환 on 3/17/25.
//

import Foundation

// Base Class Car 를 설계해주세요.
class Car {
    // 4가지의 상태를 정의해주세요.
    // - 브랜드, 모델, 연식
    //   ➡️ 모두 String 타입입니다.
    // - 엔진
    //   ➡️ Engine 이라는 커스텀 타입으로 정의해주세요.
    let brand: String
    let model: String
    let year: String
    var engine: Engine
    
    init(
        brand: String,
        model: String,
        year: String,
        engine: Engine
    ) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    // 1개의 동작을 정의해주세요.
    // - 운전하기
    //   ➡️ 동작 예시) “Car 주행 중…”  출력
    func drive() {
        print("[\(year) \(brand) \(model)] 주행 중...")
    }
    
    // 추가하고 싶은 상태와 동작은 마음껏 추가해주세요.
    // - stop(), charge(), refuel() 등..
    func stop() {
        print("[\(year) \(brand) \(model)] 정지 중...")
    }
    
    func charge() {
        print("[\(year) \(brand) \(model)] 충전 중...")
    }
    
    func refuel() {
        print("[\(year) \(brand) \(model)] 주유 중...")
    }
}
