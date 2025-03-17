//
//  main.swift
//  SDHSwiftMaster
//
//  Created by 서동환 on 3/17/25.
//

import Foundation


// MARK: - 필수 문제 1

let sum: (Int, Int) -> Void = { num1, num2 in
    let sum = num1 + num2
    print("두 수의 합은 \(sum) 입니다.")
}

sum(3, 5)

func calculate(_ num1: Int, _ num2: Int, closure: (Int, Int) -> Void) {
    closure(num1, num2)
}

calculate(2, 4, closure: sum)
