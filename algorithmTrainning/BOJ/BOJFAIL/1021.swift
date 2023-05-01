//
//  main.swift
//  algorithmTrainning
//
/**
 첫째 줄에 큐의 크기 N과 뽑아내려고 하는 수의 개수 M이 주어진다.
 N은 50보다 작거나 같은 자연수이고, M은 N보다 작거나 같은 자연수이다.
 둘째 줄에는 지민이가 뽑아내려고 하는 수의 위치가 순서대로 주어진다.
 위치는 1보다 크거나 같고, N보다 작거나 같은 자연수이다.
 
 10 3
 1 2 3
배열크기 잡기    뽑을 숫자크기
 뽑을 숫자들
 **/

import Foundation

let input = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
let queueSize = input[0]

var queue: [Int] = Array(1 ... queueSize)
let numberArray = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
// 여기까지 입력 받음


