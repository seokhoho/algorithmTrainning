//
//  main.swift
//  algorithmTrainning
//

import Foundation

/*
 프로그래머스 12943 콜라츠 추측
 1-1. 입력된 수가 짝수라면 2로 나눕니다.
 1-2. 입력된 수가 홀수라면 3을 곱하고 1을 더합니다.
 2. 결과로 나온 수에 같은 작업을 1이 될 때까지 반복합니다.
 
 1일 때 0 반환
 500번 반복 미완시 -1 반환
 횟수를 반환
 */

func solution(_ num:Int) -> Int {
    var shadow = num
    var result: Int = 0
    
    for index in 0 ..< 500 {
        if shadow == 1 {
            result = index
            break
        }
        shadow = shadow % 2 == 0 ? shadow / 2 : (shadow * 3) + 1
    }
    
    if shadow > 1 {
        return -1
    } else {
        return result
    }
}

//print(solution(626331))

