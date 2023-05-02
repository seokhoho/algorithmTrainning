//
//  main.swift
//  algorithmTrainning
//

// 백준 2566 최댓값
// 81 개의 자연수 또는 0 이 주어질 때 최댓값과 행과 열을 구해라

import Foundation

var arr : [[Int]] = Array(repeating: Array(repeating: -1, count: 9), count: 9)
var maxNumber = -1
var maxRow = 0
var maxColumn = 0

for row in 0 ..< 9 {
    
    let input = readLine()!.split(separator: " ").map {
        Int(String($0))!
    }
    for col in 0 ..< input.count {
        arr[row][col] = input[col]
        if maxNumber < input[col] {
            maxNumber = input[col]
            maxRow = row + 1
            maxColumn = col + 1
        }
    }
}

print(maxNumber)
print("\(maxRow) \(maxColumn)")
