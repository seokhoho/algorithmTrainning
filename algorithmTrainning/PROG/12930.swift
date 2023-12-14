//
//  main.swift
//  algorithmTrainning
//

//import Foundation
/*
 프로그래머스 12930 이상한 문자 만들기
 */

func solution(_ s:String) -> String {
    var result = ""
    var arr = s.map {
        String($0)
    }
    var index = 0
    for string in arr {
        if string == " " {
            result += " "
            index = 0
        } else {
            
            if index % 2 == 0 {
                result += string.uppercased()
            } else {
                result += string.lowercased()
            }
            index += 1
        }
    }
    return result
}
//print(solution("try happy"))
//print(solution("try"))
//print(solution("  TRy HElLo  WORLD "))
//// "  TrY HeLlO  WoRlD "
//print(solution("try happy sorted"))

