//
//  Required2.swift
//  SDHSwiftMaster
//
//  Created by 서동환 on 3/17/25.
//

import Foundation

final class Required2 {
    static func solve() {
        print("> 필수 문제 2")
        forEachToMap()
        highOrderFuncChaining()
        makeHighOrderFunc()
        print()
    }
    
    // 아래 forEach 문을 map 을 사용하는 코드로 변환해주세요.
    // let numbers = [1, 2, 3, 4, 5]
    //
    // var result = [String]()
    //
    // for number in numbers {
    //   result.append(number)
    // }
    static func forEachToMap() {
        let numbers = [1, 2, 3, 4, 5]

        var result = [String]()

        result = numbers.map({ number in
            String(number)
        })

        print(result)
    }
    
    // 주어진 입력값을 고차함수를 체이닝하여 주어진 출력값이 나오도록 구현해주세요.
    // - 입력: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] - 타입: Array<Int>
    // - 출력: [”2”, “4”, “6”, “8”, “10”] - 타입: Array<String>
    static func highOrderFuncChaining() {
        let inputNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        let outputString = inputNumbers.filter { num in
            return num % 2 == 0
        }.map { filteredNum in
            String(filteredNum)
        }

        print(outputString)
    }
    
    // 이제 고차함수를 직접 만들어 봅니다.
    // - 함수명: myMap
    // - 파라미터는 2개 입니다.
    //   1. 배열: [Int]
    //   2. 변환 클로저: (Int) → String
    // - 반환 값은 1개 입니다.
    //   1. [String]
    // 완성된 myMap 호출 예시
    // let result = myMap([1, 2, 3, 4, 5]) {
    //     String($0)
    // }
    //
    // print(result) // ["1", "2", "3", "4", "5"]
    static func makeHighOrderFunc() {
        func myMap(_ numArr: [Int], closure: (Int) -> String) -> [String] {
            return numArr.map { num in
                String(num)
            }
        }

        let result = myMap([1, 2, 3, 4, 5]) {
            String($0)
        }

        print(result)

        print()
    }
}
