//
//  main.swift
//  algorithmTrainning
//
// 백준 10798 세로읽기
// 최대 15 * 5 입력을 한 줄로 출력

import Foundation

var inputArray : [[String]] = Array(repeating: Array(repeating: "", count: 15), count: 5)
var result = ""
for row in 0 ..< 5 {
    let input = readLine()!.map { String($0) }
    
    for col in 0 ..< input.count {
        inputArray[row][col] = input[col]
    }
}

for col in 0 ..< inputArray[0].count {
    for row in 0 ..< inputArray.count {
        result.append(inputArray[row][col])
    }
}

print(result)
