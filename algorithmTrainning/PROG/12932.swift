//
//  main.swift
//  algorithmTrainning
//

import Foundation

/*
 프로그래머스 12932 자연수 뒤집어 배열로 만들기
 */


func solution(_ n:Int64) -> [Int] {
    
    var string = String(n)
    var arr: [Int] = []
    
    for char in string {
        arr.append(Int(String(char))!)
    }
    
    return arr.reversed()
}

//print(solution(12345))
