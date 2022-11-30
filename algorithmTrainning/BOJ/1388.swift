//
//  main.swift
//  algorithmTrainning
//

//백분 1388 바닥장식

//나무 판자 개수 구하기 - 1개 | 1개 -- 1개 | 1개
//                                  |


import Foundation

let arraySize = readLine()!.split(separator: " ").map { Int(String($0))! }
let row = arraySize[0]
let column = arraySize[1]
var answer = 0
var woodTile: [[String]] = Array(repeating: Array(repeating: "", count: column), count: row)
var woodCheck: [[Bool]] = Array(repeating: Array(repeating: false, count: column), count: row)

for index in 0 ..< row {
    woodTile[index] = Array(readLine()!.map { String($0) })
}

for rowIndex in 0 ..< row {
    for columnIndex in 0 ..< column {
        if !woodCheck[rowIndex][columnIndex] {
            tile(rowIndex, columnIndex, woodTile[rowIndex][columnIndex])
            answer += 1
        }
    }
}

print(answer)

func tile(_ row: Int, _ column: Int, _ index: String) {
    if woodCheck[row][column] || woodTile[row][column] != index {
        return
    }
    var columnPlus = 0
    var rowPlus = 0
    woodCheck[row][column] = true
    
    if index == "-", column + 1 < woodTile[row].count {
        columnPlus = 1
    } else if index == "|", row + 1 < woodTile.count {
        rowPlus += 1
    }
    
    return tile(row + rowPlus, column + columnPlus, index)
    
}


