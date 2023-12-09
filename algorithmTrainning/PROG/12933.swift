//
//  main.swift
//  algorithmTrainning
//


import Foundation

/*
 프로그래머스 12933 정수 내림차순으로 배치하기
 */

func solution(_ n:Int64) -> Int64 {
    var arr: [Int64] = []
    var shadow = n
    while shadow > 0 {
        arr.append(shadow % 10)
        shadow /= 10
    }
    let result = arr.sorted(by: >).map {
        String($0)
    }.joined()

    return Int64(result)!
}

print(solution(118372))
