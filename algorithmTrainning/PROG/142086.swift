//
//  main.swift
//  algorithmTrainning
//

// 프로그래머스 142086 가장 가까운 같은 글자

import Foundation

func solution(_ s:String) -> [Int] {
    
    var dictionary: [Character: Int] = [:]
    var result: [Int] = []
    
    for (index, str) in s.enumerated() {
        
        if let currentIndex = dictionary[str] {
            dictionary[str] = index
            result.append(index - currentIndex)
        } else {
            dictionary[str] = index
            result.append(-1)
        }
    }
    return result
}


//print(solution("foobar"))
