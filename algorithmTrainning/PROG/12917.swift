//
//  main.swift
//  algorithmTrainning
//

/*
 프로그래머스 12917 문자열 내림차순으로 배치하기
 */

//import Foundation

func solution(_ s:String) -> String {
    var result = s.map { String($0) }.sorted(by: >)
    return result.joined()
}

//print(solution("abcABC"))
