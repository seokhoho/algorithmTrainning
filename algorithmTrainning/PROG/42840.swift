//
//  main.swift
//  algorithmTrainning
//

import Foundation

// 프로그래머스 42840 모의고사

func solution(_ answers:[Int]) -> [Int] {
    let arrA = [1, 2, 3, 4, 5]
    let arrB = [2, 1, 2, 3, 2, 4, 2, 5]
    let arrC = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var corrents: [Int] = [0, 0, 0]
    var result: [Int] = []
    
    for index in 0 ..< answers.count {
        let temp = answers[index]
        
        if arrA[index % arrA.count] == temp {
            corrents[0] += 1
        }
        if arrB[index % arrB.count] == temp {
            corrents[1] += 1
        }
        if arrC[index % arrC.count] == temp {
            corrents[2] += 1
        }
    }
    let max = corrents.sorted(by: >)[0]
    
    for index in 0 ..< corrents.count {
        if max == corrents[index] {
            result.append(index + 1)
        }
    }
    return result
}

//print(solution([1,3,2,4,2]))
// 1, 2, 3, 4, 5
// 2, 1, 2, 3, 2, 4, 2, 5,
// 3, 3, 1, 1, 2, 2, 4, 4, 5, 5

// [1,2,3,4,5]    [1]
// [1,3,2,4,2]    [1,2,3]
