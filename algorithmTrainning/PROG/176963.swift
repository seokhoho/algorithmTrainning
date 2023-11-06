//
//  main.swift
//  algorithmTrainning
//

import Foundation

/*
 프로그래머스 176963 추억 점수
 name [String]
 ["may", "kein", "kain", "radi"]

 yearning [Int]
 [5, 10, 1, 3]

 photo [[String]]
 [
 ["may", "kein", "kain", "radi"],
 ["may", "kein", "brin", "deny"],
 ["kon", "kain", "may", "coni"]
 ]

 [Int]
 [19, 15, 6]
 */

let name: [String] = ["may", "kein", "kain", "radi"]

let yearning: [Int] = [5, 10, 1, 3]

let photo: [[String]] =
    [["may", "kein", "kain", "radi"],
    ["may", "kein", "brin", "deny"],
    ["kon", "kain", "may", "coni"]]

// dictionary를 만들어서 이름과 점수를 넣는다.
var nameScore: [String : Int] = [:]

for index in 0 ..< name.count {
    nameScore.updateValue(yearning[index], forKey: name[index])
}


var result: [Int] = []

for names in photo {
    var resultCount: Int = 0
    for index in 0 ..< name.count {
        if names.contains(name[index]) {
            resultCount += nameScore[name[index]]!
        }
    }
    result.append(resultCount)
}

print(result)
