//
//  main.swift
//  algorithmTrainning
//

// 백준 25206 너의 평점은

// 문제이해를 못하겠다 문해력이 부족

import Foundation


var avrg = 0.0
var totalScore = 0.0 // 학점 총합
var transcript = 0.0 // 학점 * 과목평점 합

for _ in 0 ..< 20 {
    
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    if !input[2].elementsEqual("F") {
        totalScore += Double(input[1])!
    }
    
    switch input[2] {
    case "A+":
        transcript += (Double(input[1])! * 4.5)
    case "A0":
        transcript += (Double(input[1])! * 4.0)
    case "B+":
        transcript += (Double(input[1])! * 3.5)
    case "B0":
        transcript += (Double(input[1])! * 3.0)
    case "C+":
        transcript += (Double(input[1])! * 2.5)
    case "C0":
        transcript += (Double(input[1])! * 2.0)
    case "D+":
        transcript += (Double(input[1])! * 1.5)
    case "D0":
        transcript += (Double(input[1])! * 1.0)
    default:
        break
    }
    
}

avrg = transcript / totalScore
let result = String(format: "%.6f", avrg)
if result == "nan" {
    print("0.000000")
} else {
    print(result)
}


