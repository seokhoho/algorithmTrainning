//
//  main.swift
//  algorithmTrainning
//

//백준 5522 카드게임

/**
 JOI군은 카드 게임을 하고 있다. 이 카드 게임은 5회의 게임으로 진행되며, 그 총점으로 승부를 하는 게임이다.

 JOI군의 각 게임의 득점을 나타내는 정수가 주어졌을 때, JOI군의 총점을 구하는 프로그램을 작성하라.
 */
import Foundation

var resultScore = 0

for _ in 0 ... 4 {
    let scoreString = readLine()
    
    if let scoreString = scoreString {
        let scoreInt = Int(scoreString)
        if let scoreInt = scoreInt {
            resultScore += scoreInt
        }
    }
}

print(resultScore)
