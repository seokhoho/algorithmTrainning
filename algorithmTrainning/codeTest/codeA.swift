//
//  main.swift
//  algorithmTrainning
//


import Foundation


let flowers: [[Int]] = [[2, 5], [3, 7], [10, 11]]

var days = Array<Bool>(repeating: false, count: 366)

for flowersLength in flowers {
    for index in flowersLength[0] ..< flowersLength[1] {
        days[index] = true
    }
}

var answer = 0
for index in days {
    if index {
        answer += 1
    }
}

print(answer)
