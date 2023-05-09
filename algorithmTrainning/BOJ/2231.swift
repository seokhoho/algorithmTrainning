//
//  main.swift
//  algorithmTrainning
//

// 백준 2231 분해합

// 자연수 N이 주어졌을 때, N의 가장 작은 생성자를 구해내는 프로그램을 작성하시오.
// %로 1의 자리 /로 1의 자리 삭제, 한 자리 수라고 무조건 0이 아니다.

import Foundation

var intArray: [Int] = Array(repeating: 0, count: 1000001)

for num in 0 ..< intArray.count {
    let total = num
    intArray[num] = (plusFunction(num, total))
}

let input = Int(readLine()!)!
let answer = intArray.firstIndex(of: input)
if answer == nil {
    print(0)
} else {
    print(answer!)
}


func plusFunction ( _ num: Int, _ total: Int ) -> Int {

    if num / 10 > 0 {
        return plusFunction(num / 10, total + ( num % 10 ))
    } else {
        return total + num
    }
}
