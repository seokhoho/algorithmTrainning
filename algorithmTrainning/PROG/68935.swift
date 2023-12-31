//
//  main.swift
//  algorithmTrainning
//


import Foundation

// 프로그래머스 68935 3진법 뒤집기

func solution(_ n:Int) -> Int {
    // String(Int ,radix:3).reversed() = 문자열 3진법으로 변환 & 문자열 뒤집기
    // String() = ReversedCollection<String> 타입을 'StringProtocol'로
    // Int(StringProtocol, radix: 3)! = 합친 문자열 정수 10진법으로 강제 언랩핑
    return Int(String(String(n, radix: 3).reversed()),radix: 3)!
}

// https://seolhee2750.tistory.com/44
// String(Int, radix: Int) 정수를 n진법 문자열로 변환
// Int(StringProtocol, radix: Int) 문자열프로토콜이 무슨 진법인지 n 작성하여 10진법으로 정수형 변환

//print(solution(45))

