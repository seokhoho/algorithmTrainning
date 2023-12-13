//
//  main.swift
//  algorithmTrainning
//

/*
 프로그래머스 12918 문자열 다루기 기본
 문자열을 정수로 형변환하고 true false 반환
 */


func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        if let s = Int(s) {
            return true
        } else {
            return false
        }
    } else {
        return false
    }
}

//print(solution("1212"))


