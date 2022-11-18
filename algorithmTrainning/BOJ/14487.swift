//
//  main.swift
//  algorithmTrainning
//

//백준 14487 욱제는 효도쟁이야!!

import Foundation

let numberOfVillages = Int(readLine()!)!

let distanceOfVillages = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
var result = 0
var maxInDistance = 0
for index in distanceOfVillages {
    result += index
    if index > maxInDistance {
        maxInDistance = index
    }
}
print(result - maxInDistance)
