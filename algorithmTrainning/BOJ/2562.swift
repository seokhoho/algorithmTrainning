//
//  main.swift
//  algorithmTrainning
//


import Foundation

/*
 BOJ 2562 최댓값
 
 9개의 서로 다른 자연수가 주어질 때, 이들 중 최댓값을 찾고 그 최댓값이 몇 번째 수인지를 구하는 프로그램을 작성하시오.

 */

var inputArray: [Int] = []

for _ in 0 ..< 9 {
    let input : Int = Int(readLine()!)!
    inputArray.append(input)
}
let maxNumber = inputArray.sorted(by: >)
let maxIndex = inputArray.firstIndex(of: maxNumber[0])!
let index = inputArray.distance(from: 0, to: maxIndex)
print(maxNumber[0])
print(index + 1)
