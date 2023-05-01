//
//  main.swift
//  algorithmTrainning
//

import Foundation

let id_list: [String] = ["A", "A B C C", "A B"]
let k = 2

var visitArray = Array(repeating: Array(repeating: false, count: 1000), count: 10001)
var day = 0
var dic = [String : Int]()
var arrayKey = 0

for todayVisit in id_list {
    
    let dayVisit = todayVisit.components(separatedBy: " ")
    
    for visit in dayVisit {
        if dic[visit] == nil {
            dic.updateValue(arrayKey, forKey: visit)
            visitArray[day][arrayKey] = true
            arrayKey += 1
        } else {
            visitArray[day][dic[visit]!] = true
        }
    }
    day += 1
}
var result = 0

for visitKey in 0 ..< arrayKey {
    var sum = 0
    for visitDay in 0 ..< day {
        if visitArray[visitDay][visitKey], sum < k {
            sum += 1
        }
    }
    result += sum
}

print(result)


