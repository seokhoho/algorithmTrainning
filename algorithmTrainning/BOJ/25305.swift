//
//  main.swift
//  algorithmTrainning
//
// 백준 25305 커트라인

// 상을 받는 사람들 중 점수가 가장 가장 낮은 사람의 점수를 출력하시오

import Foundation

var input = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
let selectNumber = input[1] - 1

let inputRecord = readLine()!.split(separator: " ").map {
    Int(String($0))!
}.sorted(by: >)

print(inputRecord[selectNumber])
