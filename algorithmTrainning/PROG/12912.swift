//
//  main.swift
//  algorithmTrainning
//

import Foundation

/*
 프로그래머스 12912 두 정수 사이의 합
 */

func solution(_ a:Int, _ b:Int) -> Int64 {
    var sumA: Int64 = 0
    var sumB: Int64 = 0
    let first: Int = min(a, b)
    let middle: Int = abs(a - b)
    let last: Int = max(a, b)
    if a == b {
        return Int64(a)
    } else {
        
        for index in first ..< first + middle {
            sumA += Int64(index)
        }
        for index in first + middle ... last {
            sumB += Int64(index)
        }
        return sumA + sumB
    }
}

// print(solution(5, 3))

