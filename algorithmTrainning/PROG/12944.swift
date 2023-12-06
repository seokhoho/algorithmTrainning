//
//  main.swift
//  algorithmTrainning
//

import Foundation

/*
 프로그래머스 12944 평균 구하기
 */

func solution(_ arr:[Int]) -> Double {
    
    let arrCount: Double = Double(arr.count)
    var temp: Int = 0
    for num in arr {
        temp += num
    }
    
    return (Double(temp) / arrCount)
}

print(solution([5,5]))
