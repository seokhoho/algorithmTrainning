//
//  main.swift
//  algorithmTrainning
//


import Foundation

// PROG 12954 x만큼 간격이 있는 n개의 숫자

func solution(_ x:Int, _ n:Int) -> [Int64] {
    
    var add: Int = 0
    var result: [Int64] = []
    for _ in 0 ..< n {
        add += x
        result.append(Int64(add))
    }
    
    return result
}

print(solution(2, 5))
