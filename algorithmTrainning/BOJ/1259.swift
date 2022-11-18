//
//  main.swift
//  algorithmTrainning
//

//백준 1259 팰린드롬수

import Foundation

var continued: Bool = true

while continued {
    var arr = Array(readLine()!)
    if arr.count == 1, arr[0] == "0" {
        continued = false
        break
    }
    var answer: Bool = true
    let center = arr.count / 2
    var lastIndex = arr.count - 1
    for firstIndex in arr {
        if firstIndex != arr[lastIndex] {
            answer = false
            break
        }
        lastIndex -= 1
        if lastIndex < center {
            break
        }
    }
    if answer {
        print("yes")
    } else {
        print("no")
    }
}
