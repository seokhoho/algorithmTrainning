//
//  main.swift
//  algorithmTrainning
//

//백준 15964 이상한 기호

//첫째 줄에 (A+B)×(A-B)의 결과를 출력한다.

import Foundation

let input = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

let result = (input[0] + input[1]) * (input[0] - input[1])

print(result)
