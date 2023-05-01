//
//  main.swift
//  algorithmTrainning
//

//백준 1049 기타줄

import Foundation

let input = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
let needLine = input[0]
let storeCount = input[1]

var lineSet: [Int] = []
var linePiece: [Int] = []
var resultPrice: [Int] = []

for _ in 0 ..< storeCount {
    let input = readLine()!.split(separator: " ").map {
        Int(String($0))!
    }
    lineSet.append(input[0])
    linePiece.append(input[1])
}
 
let minSet = lineSet.min()!
let minPiece = linePiece.min()!

resultPrice.append(needLine * minPiece)

let temp = (needLine / 6) * minSet

if needLine % 6 > 0 {
    resultPrice.append(temp + ((needLine % 6) * minPiece))
    resultPrice.append(temp + minSet)
} else {
    resultPrice.append(temp)
}

print(resultPrice.min()!)

