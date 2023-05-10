//
//  main.swift
//  algorithmTrainning
//

// 백준 1269 대칭 차집합

//  두 집합의 대칭 차집합의 원소의 개수를 출력


import Foundation


let arrayCount = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

var arrayA = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
var arrayB = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

var dictionary: [Int : Bool] = [:]

for num in arrayA {
    dictionary.updateValue(true, forKey: num)
}
for num in arrayB {
    
    if dictionary.keys.contains(num) {
        dictionary.updateValue(false, forKey: num)
    } else {
        dictionary.updateValue(true, forKey: num)
    }
}
let condition: ((Int, Bool)) -> Bool = {
    $0.1
}
dictionary = dictionary.filter(condition)

print(dictionary.count)
