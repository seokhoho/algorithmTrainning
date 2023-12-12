//
//  main.swift
//  algorithmTrainning
//

import Foundation

/*
 프로그래머스 76501 음양 더하기
 [4,7,12]    [true,false,true]    9
 [1,2,3]    [false,false,true]    0
 */

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
  
    var result: Int = 0
    
    for tuple in absolutes.enumerated() {
        if signs[tuple.offset] {
            result += tuple.element
        } else {
            result -= tuple.element
        }
    }
    return result
}

//print(solution([4,7,12], [true,false,true]))
