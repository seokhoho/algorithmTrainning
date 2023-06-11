//
//  main.swift
//  algorithmTrainning
//

// 백준 19532 수학은 비대면강의입니다

// ax + by = c && dx + ey = f 두개의 식에 성립하는 x y의 값을 출력

import Foundation

let rangeArray = [Int](-999 ... 999)
var flag = true

let inputArray = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

let a = inputArray[0],
    b = inputArray[1],
    c = inputArray[2],
    d = inputArray[3],
    e = inputArray[4],
    f = inputArray[5]

for x in rangeArray {
    for y in rangeArray {
        if (a * x) + (b * y) == c , (d * x) + (e * y) == f {
            print("\(x) \(y)")
            flag = false
            break
        }
    }
    if !flag {
        break
    }
}
