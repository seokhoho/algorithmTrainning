//
//  main.swift
//  algorithmTrainning
//

//백준 1145 적어도 대부분의 배수

//입력되는 5개 자연수 중 3개 이상으로 나누어 지는 가장 작은 자연수 찾기

import Foundation

var resultArray = Array<Int>(repeating: 0, count: 1000001)

let inputArray = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

for index in inputArray {
    var multiple = 1
    while multiple * index < resultArray.count {
        resultArray[multiple * index] += 1
        multiple += 1
    }
}
for index in 0 ..< resultArray.count {
    if resultArray[index] > 2 {
        print(index)
        break
    }
}
