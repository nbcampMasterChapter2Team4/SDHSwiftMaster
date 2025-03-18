//
//  Required3.swift
//  SDHSwiftMaster
//
//  Created by 서동환 on 3/17/25.
//

import Foundation

final class Required3 {
    static func solve() {
        print("> 필수 문제 3")
        print(a([1, 2, 3, 4, 5]))
        print(b(["가", "나", "다", "라", "마"]))
        test()
        print(d([1, 2, 3, 4, 5]))
//        print(d(["가", "나", "다", "라", "마"]))  // Error: String 타입은 Numeric 프로토콜을 따르지 않음
        print("\n=====================================\n")
    }
    
    // Int 배열의 짝수번째 요소를 제거해서 반환하는 함수 a 를 작성해주세요.
    // - 테스트 입력: [1, 2, 3, 4, 5]
    // - 테스트 출력: [1, 3, 5]
    static func a(_ input: [Int]) -> [Int] {
        var output: [Int] = []
        for i in 0..<input.count {
            if i % 2 == 0 {
                output.append(input[i])
            }
        }
        
        return output
    }
    
    // String 배열의 짝수번째 요소를 제거해서 반환하는 함수 b 를 작성해주세요.
    // - 테스트 입력: ["가", "나", "다", "라", "마"]
    // - 테스트 출력: ["가", "다", "마"]
    static func b(_ input: [String]) -> [String] {
        var output: [String] = []
        
        for i in 0..<input.count {
            let currIndex = input.index(input.startIndex, offsetBy: i)
            if i % 2 == 0 {
                output.append(input[currIndex])
            }
        }
        
        return output
    }
    
    // 위 두 함수를 하나의 함수로 대체할 수 있는 방법을 고민해보고, 함수 c 로 작성해주세요.
    // 제네릭
    static func c<T>(inputGeneric: [T]) -> [T] {
        let output = inputGeneric.enumerated()
            .filter { $0.offset % 2 == 0 }
            .map { $0.element }
        
        return output
    }
    
    // Any + 가변 매개변수
    static func c(inputsAny: [Any]...) -> [[Any]] {
        var outputs: [[Any]] = []
        
        for input in inputsAny {
            let output = input.enumerated()
                .filter { $0.offset % 2 == 0 }
                .map { $0.element }
            outputs.append(output)
        }
        
        return outputs
    }
    
    // 테스트 입력들을 넣고 호출하여 출력이 제대로 나오는지 작성해주세요.
    // - 테스트 입력: [1, 2, 3, 4, 5], ["가", "나", "다", "라", "마"]
    // - 테스트 출력: [1, 3, 5], ["가", "다", "마"]
    static func test() {
        let testInput1 = [1, 2, 3, 4, 5]
        let testOutput1 = c(inputGeneric: testInput1)
        print(testOutput1)
        
        let testInput2 = ["가", "나", "다", "라", "마"]
        let testOutput2 = c(inputGeneric: testInput2)
        print(testOutput2)
        
        let testInputsAny = [[1, 2, 3, 4, 5], ["가", "나", "다", "라", "마"]]
        let testOutputsAny = c(inputsAny: testInputsAny)
        print(testOutputsAny)
    }
    
    // 함수 c 를 기반으로 수정하여 함수 d 를 작성해주세요.
    // - 파라미터의 타입을 << 'Numeric 프로토콜'을 준수하는 타입의 요소를 가진 배열 >> 로 변경합니다.
    static func d<T: Numeric>(_ input: [T]) -> [T] {
        let output = input.enumerated()
            .filter { $0.offset % 2 == 0 }
            .map { $0.element }
        
        return output
    }
}
