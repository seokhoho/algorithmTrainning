//
//  main.swift
//  algorithmTrainning
//

// 백준 1764 듣보잡
// 듣보잡(N과 M의 교집합)의 수와 명단을 사전순으로 출력

import Foundation


var numbers = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

let cantHeard = numbers[0]
let cantSee = numbers[1]

var cantHeardSee: [String : Bool] = [:]

for _ in 0 ..< cantHeard {
    let names = String(readLine()!)
    cantHeardSee.updateValue(false , forKey: names)
}

for _ in 0 ..< cantSee {
    let names = String(readLine()!)
    if cantHeardSee.keys.contains(names) {
        cantHeardSee.updateValue(true, forKey: names)
    }
}

let condition: ((String, Bool)) -> Bool = {
    $0.1
}

cantHeardSee = cantHeardSee.filter(condition)
let answerArray = cantHeardSee.keys.sorted()

print(answerArray.count)
for answer in answerArray {
    print(answer)
}
