//
//  main.swift
//  algorithmTrainning
//

// 백준 10988 팰린드롬인지 확인하기

// 입력받은 값을 팰린드롬인지 확인하여 1, 0로 출력하기

import Foundation


var flag = true
let input = readLine()!.map { String($0) }

if input.count > 1 {
    let mid = input.count / 2
    var last = input.count - 1

    for first in 0 ..< mid {
        if !input[first].elementsEqual(input[last]) {
            flag = false
            break
        }
        last -= 1
    }
}

if flag {
    print(1)
} else {
    print(0)
}
