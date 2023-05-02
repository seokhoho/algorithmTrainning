//
//  main.swift
//  algorithmTrainning
//
// 백준 2563 색종이
// 색종이의 왼쪽 아래 꼭지점의 좌표를 알려주며 모든 색종이는 10칸, 색종이가 겹치는 넓이를 출력

import Foundation


var white : [[Int]] = Array(repeating: Array(repeating: 0, count: 25), count: 25)

let pageNumber = Int(readLine()!)!

for _ in 0 ..< pageNumber {
    
    let input = readLine()!.split(separator: " ").map {
        Int(String($0))!
    }
    let left = input[0] - 1
    let bottom = input[1] - 1
    let right = left + 10
    let top = bottom + 10
    
    for row in bottom ..< top {
        for column in left ..< right {
            white[row][column] += 1
        }
    }
}
//var left = 0
//var right = 0
//var bottom = 0
//var top = 0
//
//for row in 0 ..< 25 {
//    for column in 0 ..< 25 {
//
//        if white[row][column] > 1 {
//
//        }
//
//    }
//}
