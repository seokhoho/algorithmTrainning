//
//  main.swift
//  algorithmTrainning
//

import Foundation

/*
 프로그래머스 12910 나누어 떨어지는 숫자 배열
 */

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    var result: [Int] = []
    
    for index in 0 ..< arr.count {
        
        if arr[index] % divisor == 0 {
            result.append(arr[index])
        }
    }
    
    if result.isEmpty {
        return [-1]
    } else {
        return result.sorted(by: <)
    }
}

//print(solution([5, 9, 7, 10], 5))
