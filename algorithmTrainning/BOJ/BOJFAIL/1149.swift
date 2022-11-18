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

var totalMinPaintMoney = Int.max
var houseNumber = 1

for colorCount in 0 ..< 3 {
    var sumPaintMoney = paintPrice[0][colorCount]
        
    paintingHouse(paintPrice[houseNumber], colorCount, sumPaintMoney, houseNumber)
        
}

func paintingHouse(_ paintPrice: [Int], _ colorCount: Int, _ sumPaintMoney: Int, _ houseNumber: Int) {
    if houseNumber > houseCount { return }
    
    
    
    return paintingHouse(paintPrice[houseNumber + 1], colorCount, sumPaintMoney, houseNumber)
    
    
}


print(totalMinPaintMoney)
print(paintPrice)
