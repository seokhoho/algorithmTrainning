//
//  main.swift
//  algorithmTrainning
//


import Foundation

/*
 백준 1996 지뢰 찾기
 
 첫째 줄에 N(1 ≤ N ≤ 1,000)이 주어진다. 
 다음 N개의 줄에는 지뢰 찾기 map에 대한 정보가 주어지는데
 '.' 또는 숫자로 이루어진 문자열이 들어온다.
 '.'는 지뢰가 없는 것이고 숫자는 지뢰가 있는 경우로 그 칸의 지뢰의 개수이다.
 한 줄은 N개의 문자로 이루어져 있다.
 
 N개의 줄에 걸쳐서 완성된 지뢰 찾기 map을 출력한다. 
 지뢰는 '*'로 출력하며. 10 이상인 경우는 'M'(Many)으로 출력하면 된다.
 map은 숫자 또는 'M' 또는 '*'로만 이루어져 있어야 한다.
 
5
1....
..3..
.....
.4...
...9.
 
 *4330
 14*30
 47730
 4*M99
 44M*9
 
 */

let arrayNumber: Int = Int(readLine()!)!

var inputArray: [[String]] = []
var resultArray: [[String]] = []

for _ in 0 ..< arrayNumber {
    inputArray.append(readLine()!.map { String($0) })
}

for row in 0 ..< arrayNumber {
    var tempString: String = ""
    for column in 0 ..< arrayNumber {
        
        if inputArray[row][column] == "." {
            var temp = 0
            temp += mineCheck(row - 1, column - 1)
            temp += mineCheck(row - 1, column)
            temp += mineCheck(row - 1, column + 1)
            temp += mineCheck(row, column - 1)
            temp += mineCheck(row, column + 1)
            temp += mineCheck(row + 1, column - 1)
            temp += mineCheck(row + 1, column)
            temp += mineCheck(row + 1, column + 1)
            
            if temp > 9 {
                tempString += "M"
            } else {
                tempString += String(temp)
            }
            
        } else {
            tempString += "*"
        }
    }
    resultArray.append([tempString])
}

for result in resultArray {
    for answer in result {
        print(answer)
    }
}

func mineCheck(_ row: Int, _ column: Int) -> Int {
    
    guard  row >= 0 && row < arrayNumber && column >= 0 && column < arrayNumber else { return 0 }
    
    switch inputArray[row][column] {
    case ".":
        return 0
    default:
        return Int(inputArray[row][column])!
    }
}
