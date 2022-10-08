//
//  main.swift
//  algorithmTrainning
//
//

//백준 11382 꼬마 정민

//꼬마 정민이는 이제 A + B 정도는 쉽게 계산할 수 있다. 이제 A + B + C를 계산할 차례이다!

import Foundation

let a = readLine()
var result = 0

if let a = a {
    let stringArray = a.components(separatedBy: " ")
    
    for temp in 0 ..< 3 {
        let sum = Int(stringArray[temp])
        if let sum = sum {
            result += sum
        }
    }
}

print(result)
