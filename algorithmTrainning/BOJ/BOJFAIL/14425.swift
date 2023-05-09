//
//  main.swift
//  algorithmTrainning
//

// 백준 14425 문자열 집합

// N에 M의 문자열이 있는지 비교하여 출력

import Foundation

var answerCount = 0
let input = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
var nStringArray: [String] = Array(repeating: "", count: input[0])
var mStringArray: [String] = Array(repeating: "", count: input[1])

for num in 0 ..< input[0] {
    let stringInput = String(readLine()!)
    nStringArray[num] = stringInput
}
//
//for num in 0 ..< input[1] {
//    let stringInput = String(readLine()!)
//
//    mStringArray[num] = stringInput
//}
////
//let mStringSet = Set<String>(mStringArray)
//
//for mString in mStringSet {
//    if nStringArray.contains(mString) {
//        answerCount += 1
//    }
//}
for _ in 0 ..< input[1] {
    let stringInput = String(readLine()!)
    if nStringArray.contains(stringInput) {
       answerCount += 1
    }
}

print(answerCount)


//N의 문자열을 set?
