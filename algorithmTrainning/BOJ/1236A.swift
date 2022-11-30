//
//  main.swift
//  algorithmTrainning
//

//백준 1236 성 지키기

//보완할 점이 있음

import Foundation

let rowColumn = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
var gpsArray: [[String]] = Array(repeating: Array(repeating: "", count: rowColumn[1]), count: rowColumn[0])

for index in 0 ..< rowColumn[0] {
    gpsArray[index].replaceSubrange(0 ..< rowColumn[1], with: Array(readLine()!).map {
        String($0)
    })
}

var sum = 0
for row in 0 ..< rowColumn[0] {
    for colum in 0 ..< rowColumn[1] {
        var width: Bool = false
        var height: Bool = false
        if gpsArray[row][colum].contains(".") {
            if upSide(row, colum), downSide(row, colum) {
                height = true
            }
            if leftSide(row, colum), rightSide(row, colum) {
                width = true
            }
        }
        if width, height {
            gpsArray[row][colum] = "X"
            sum += 1
        }
    }
}
for row in 0 ..< rowColumn[0] {
    for colum in 0 ..< rowColumn[1] {
        var width: Bool = false
        var height: Bool = false
        if gpsArray[row][colum].contains(".") {
            if upSide(row, colum), downSide(row, colum) {
                height = true
            }
            if leftSide(row, colum), rightSide(row, colum) {
                width = true
            }
        }
        if width || height {
            gpsArray[row][colum] = "X"
            sum += 1
        }
    }
}




print(sum)

func upSide(_ row: Int, _ colum: Int) -> Bool {
    if row < 0 {
        return true
    } else if gpsArray[row][colum].contains("X") {
        return false
    } else {
        return upSide(row - 1, colum)
    }
}

func downSide(_ row: Int, _ colum: Int) -> Bool {
    if row > (rowColumn[0] - 1) {
        return true
    } else if gpsArray[row][colum].contains("X") {
        return false
    } else {
        return downSide(row + 1, colum)
    }
}

func leftSide(_ row: Int, _ colum: Int) -> Bool {
    if colum < 0 {
        return true
    } else if gpsArray[row][colum].contains("X") {
        return false
    } else {
        return leftSide(row, colum - 1)
    }
}

func rightSide(_ row: Int, _ colum: Int) -> Bool {
    if colum > (rowColumn[1] - 1) {
        return true
    } else if gpsArray[row][colum].contains("X") {
        return false
    } else {
        return rightSide(row, colum + 1)
    }
}

