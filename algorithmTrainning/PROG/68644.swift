//
//  main.swift
//  algorithmTrainning
//


import Foundation

// 프로그래머스 68644 두 개 뽑아서 더하기

func solution(_ numbers:[Int]) -> [Int] {
    var result: Set<Int> = []

    for i in 0 ..< numbers.count - 1 {
        for j in i + 1 ..< numbers.count {
            result.insert(numbers[i] + numbers[j])
        }
    }
    return result.sorted()
}
//print(solution([2,1,3,4,1]))
