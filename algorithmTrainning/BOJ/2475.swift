//
//  main.swift
//  algorithmTrainning
//

//백준 2475 검증수

//검증수는 고유번호의 처음 5자리에 들어가는 5개의 숫자를 각각 제곱한 수의 합을 10으로 나눈 나머지이다.

//map, Array<Double>(), pow(x, y), Int(Double) isn't Optional

import Foundation

let inputArray = readLine()!.split(separator: " ").map {
    Double(String($0))!
}
var result = 0

for inputNumber in inputArray {
    let tempNumber = Int(pow(inputNumber, 2))
    result += tempNumber
}

print(result % 10)
