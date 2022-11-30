//
//  main.swift
//  algorithmTrainning
//

//백준 1149 RGB거리

import Foundation


let houseCount = Int(readLine()!)!
var paintPrice: [[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: houseCount)

for index in 0 ..< houseCount {
    paintPrice[index].replaceSubrange(0...2, with: readLine()!.split(separator: " ").map {
        Int(String($0))!
    })
}

for index in 1 ..< houseCount {
    paintPrice[index][2] += min(paintPrice[index - 1][0], paintPrice[index - 1][1])
    paintPrice[index][1] += min(paintPrice[index - 1][0], paintPrice[index - 1][2])
    paintPrice[index][0] += min(paintPrice[index - 1][1], paintPrice[index - 1][2])
}

print(min(paintPrice[houseCount - 1][0], min(paintPrice[houseCount - 1][1], paintPrice[houseCount - 1][2])))
