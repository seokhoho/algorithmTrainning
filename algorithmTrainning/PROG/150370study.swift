//
//  main.swift
//  algorithmTrainning
//


import Foundation

/*
 프로그래머스 150370 개인정보 수집 유효기간
 
 https://school.programmers.co.kr/learn/courses/30/lessons/150370
 https://school.programmers.co.kr/questions/42018
 https://school.programmers.co.kr/questions/42151
 https://school.programmers.co.kr/questions/42190
 
 
 A라는 약관의 유효기간이 12 달이고, 2021년 1월 5일에 수집된 개인정보가 A약관으로 수집되었다면 해당 개인정보는 2022년 1월 4일까지 보관 가능하며 2022년 1월 5일부터 파기해야 할 개인정보입니다.
 당신은 오늘 날짜로 파기해야 할 개인정보 번호들을 구하려 합니다.

 모든 달은 28일까지 있다고 가정합니다.
 
 
 오늘 날짜를 의미하는 문자열 today, 약관의 유효기간을 담은 1차원 문자열 배열 terms와 수집된 개인정보의 정보를 담은 1차원 문자열 배열 privacies가 매개변수로 주어집니다. 이때 파기해야 할 개인정보의 번호를 오름차순
 
 
 오늘 날짜가 2022.05.19일 때의 예시입니다.

 약관 종류    유효기간
 A    6 달
 B    12 달
 C    3 달
 번호    개인정보 수집 일자    약관 종류
 1    2021.05.02    A
 2    2021.07.01    B
 3    2022.02.19    C
 4    2022.02.20    C
 
 "2022.05.19"
 
 ["A 6", "B 12", "C 3"]
 
 ["2021.05.02 A",
 "2021.07.01 B",
 "2022.02.19 C",
 "2022.02.20 C"]
 
 [1, 3]

 */

let today: String = "2021.12.08"
let terms: [String] = ["B 18"]
let privacies: [String] = [
                           "2020.06.08 B"]

var termDictionary: [String: Int] = [:]

//약관을 A를 키로 1를 정수값으로 저장 -> A: 1
for index in 0 ..< terms.count {
    let splitTerms: [String] = terms[index].split(separator: " ").map {
        String($0)
    }
    termDictionary.updateValue(Int(splitTerms[1])!, forKey: splitTerms[0])
}
var result: [Int] = []

//현재 날짜를 분리하기 2020, 5, 2
let splitToday: [Int] = today.split(separator: ".").map {
    Int(String($0))!
}
//현재 날짜 모두 일로 변환하기
let sumToday: Int = ((splitToday[0] * 12) * 28) + (splitToday[1] * 28) + splitToday[2]

for index in 0 ..< privacies.count {
    //인덱스 순서대로 시작일과 약관선택을 나눈다 -> "2022.05.02" "A"
    let splitPrivacies: [String] = privacies[index].split(separator: " ").map {
        String($0)
    }
    
    //연월일을 나누어 정수형 배열에 넣는다 -> 2022, 5, 2
    var splitYMD: [Int] = splitPrivacies[0].split(separator: ".").map {
        Int(String($0))!
    }
    
    //월 더하기
    splitYMD[1] += termDictionary[splitPrivacies[1]]!
    splitYMD[2] -= 1
    if splitYMD[2] < 1 {
        splitYMD[2] = 28
        splitYMD[1] -= 1
    }
    //약관 날짜 모두 일로 변환하기
    let sumYMD = ((splitYMD[0] * 12) * 28) + (splitYMD[1] * 28) + splitYMD[2]
    
    if sumYMD < sumToday {
        result.append(index + 1)
    }
}

print(result)

