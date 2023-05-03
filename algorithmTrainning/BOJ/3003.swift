//
//  main.swift
//  algorithmTrainning
//

// 백준 3003 킹, 퀸, 룩, 비숍, 나이트, 폰

// 기물 개수에 따라 더하거나 빼야하는 값 출력하기

import Foundation


let pices : [Int] = [1, 1, 2, 2, 2, 8]
var result : [Int] = Array(repeating: 0, count: 6)
let input = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

for num in 0 ..< pices.count {
    result[num] = pices[num] - input[num]
}

print("\(result[0]) \(result[1]) \(result[2]) \(result[3]) \(result[4]) \(result[5])")
