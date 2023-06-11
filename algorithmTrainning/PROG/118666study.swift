//
//  main.swift
//  algorithmTrainning
//

import Foundation

/*
 프로그래머스 118666 성격 유형 검사하기
 
 1    매우 비동의 +3
 2    비동의     +2
 3    약간 비동의 +1
 4    모르겠음
 5    약간 동의  +1
 6    동의      +2
 7    매우 동의  +3
 
 두 점수가 같으면 사전 순으로 빠른 것이 출력
 T C J A 빠름
 R F M N 느림
 */

let survey: [String] = ["AN", "CF", "MJ", "RT", "NA"]
let choices: [Int] = [5, 3, 2, 7, 5]


func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    var mbti: [String: Int] = ["T": 0, "R": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
    
    for index in 0 ..< survey.count {
        let stringArr: [String] = survey[index].map {String($0)} //AN을 A와 N으로 문자열배열 생성
        let number: Int = choices[index]
        
        let firstWord = stringArr[0]
        let secondWord = stringArr[1]
        
        switch number {
        case 1:
            let temp = 3 + (mbti[firstWord] ?? 0)
            mbti.updateValue(temp, forKey: firstWord)
        case 2:
            let temp = 2 + (mbti[firstWord] ?? 0)
            mbti.updateValue(temp, forKey: firstWord)
        case 3:
            let temp = 1 + (mbti[firstWord] ?? 0)
            mbti.updateValue(temp, forKey: firstWord)
        case 5:
            let temp = 1 + (mbti[secondWord] ?? 0)
            mbti.updateValue(temp, forKey: secondWord)
        case 6:
            let temp = 2 + (mbti[secondWord] ?? 0)
            mbti.updateValue(temp, forKey: secondWord)
        case 7:
            let temp = 3 + (mbti[secondWord] ?? 0)
            mbti.updateValue(temp, forKey: secondWord)
        default:
            break
        }
    }
    
    var result: String = ""
    
    if (mbti["R"] ?? 0) >= (mbti["T"] ?? 0) {
        result += "R"
    } else {
        result += "T"
    }
    if (mbti["C"] ?? 0) >= (mbti["F"] ?? 0) {
        result += "C"
    } else {
        result += "F"
    }
    if (mbti["J"] ?? 0) >= (mbti["M"] ?? 0) {
        result += "J"
    } else {
        result += "M"
    }
    if (mbti["A"] ?? 0) >= (mbti["N"] ?? 0) {
        result += "A"
    } else {
        result += "N"
    }
    
    return result
    
}


/*
 
 
 let survey: [String] = ["TR", "RT", "TR"]
 let choices: [Int] = [7, 1, 3]
 
 var dictionary: [String: Int] = ["T": 0, "R": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
 
 for index in 0 ..< survey.count {
 let stringArr: [String] = survey[index].map {String($0)} //AN을 A와 N으로 문자열배열 생성
 let number: Int = choices[index]
 countingNumber(number: number, firstWord: stringArr[0], secondWord: stringArr[1])
 }
 
 var result: String = ""
 
 func sumResultString(firstWord: String, secondWord: String) {
 if (dictionary[firstWord] ?? 0) >= (dictionary[secondWord] ?? 0) {
 result += firstWord
 } else {
 result += secondWord
 }
 }
 sumResultString(firstWord: "T", secondWord: "R")
 sumResultString(firstWord: "C", secondWord: "F")
 sumResultString(firstWord: "J", secondWord: "M")
 sumResultString(firstWord: "A", secondWord: "N")
 
 print("\(result)")
 
 
 func countingNumber(number: Int, firstWord: String, secondWord: String) {
 switch number {
 case 1:
 let temp = 3 + (dictionary[firstWord] ?? 0)
 dictionary.updateValue(temp, forKey: firstWord)
 case 2:
 let temp = 2 + (dictionary[firstWord] ?? 0)
 dictionary.updateValue(temp, forKey: firstWord)
 case 3:
 let temp = 1 + (dictionary[firstWord] ?? 0)
 dictionary.updateValue(temp, forKey: firstWord)
 case 5:
 let temp = 1 + (dictionary[secondWord] ?? 0)
 dictionary.updateValue(temp, forKey: secondWord)
 case 6:
 let temp = 2 + (dictionary[secondWord] ?? 0)
 dictionary.updateValue(temp, forKey: secondWord)
 case 7:
 let temp = 3 + (dictionary[secondWord] ?? 0)
 dictionary.updateValue(temp, forKey: secondWord)
 default:
 break
 }
 }
 
 
 */
