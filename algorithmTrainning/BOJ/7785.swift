//
//  main.swift
//  algorithmTrainning
//

// 백준 7785 회사에 있는 사람

// 회사에 있는 사람의 이름을 사전 순의 역순으로 한 줄에 한 명씩 출력

import Foundation

let history = Int(readLine()!)!

var names: [String : Bool] = [:]

for _ in 0 ..< history {
    let nameAndAction = readLine()!.split(separator: " ").map { String($0) }
    
    if nameAndAction[1].contains("enter") {
        names.updateValue(true , forKey: nameAndAction[0])
    } else {
        names.updateValue(false , forKey: nameAndAction[0])
    }
}

let condition: ((String, Bool)) -> Bool = {
    $0.1
}

names = names.filter(condition)
let answerArray: [String] = names.keys.sorted(by: >)


for answer in answerArray {
    print(answer)
}

//출퇴근을 Bool로 condition 클로저가 출근인 true일 때 filter로 새로운 names 딕셔너리를 만들고
//이름만 정렬하여 새로운 배열에 대입한다
