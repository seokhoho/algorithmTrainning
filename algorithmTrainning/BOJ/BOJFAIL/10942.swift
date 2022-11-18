//
//  main.swift
//  algorithmTrainning
//

/**
 //백준 10942  팰린드롬?
 
 7 배열 길이
 1 2 1 3 1 2 1 배열 요소
 4 문제의 개수
 1 3  배열의 시작과 끝
 2 5
 3 3
 5 7*/


import Foundation

let arraySize = Int(readLine()!)!
var answerArray: [[Int]] = Array(repeating: Array(repeating: 2, count: arraySize), count: arraySize)

let inputArray = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

for row in 0 ..< arraySize {
    for colum in (row ..< arraySize).reversed()  {
        answerArray[row][colum] = containCheck(row, colum)
    }
}

func containCheck(_ row: Int, _ colum: Int) -> Int {
    
    if inputArray[row] != inputArray[colum] {
        return 0
    } else if (row + 1) >= (colum - 1) {
        return 1
    }
    if answerArray[row + 1][colum - 1] < 2 {
        return answerArray[row][colum]
    } else {
        return containCheck(row + 1, colum - 1)
    }
}

let countOfFor = Int(readLine()!)!

for _ in 0 ..< countOfFor {
    
    let answer = readLine()!.split(separator: " ").map {
        Int(String($0))! - 1
    }
    let result = answerArray[answer[0]][answer[1]]
    print(result)
    
}
