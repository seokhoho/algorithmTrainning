//
//  main.swift
//  algorithmTrainning
//

import Foundation

/*
 프로그래머스 12928 약수의 합
 */

func solution(_ n: Int) -> Int {
    var add = 0
    if n > 0 {
        for i in 1 ... n {
            if n % i == 0 {
                add += i
            }
        }
    }
    return add
}

for a in 1...100 {
    print("\(a)는 \(solution(a)) 입니다")
}
