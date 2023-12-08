//
//  main.swift
//  algorithmTrainning
//

import Foundation

// 프로그래머스 12945 피보나치 수
// 2 <= n <= 100,000

func solution(_ n:Int) -> Int {
   
    var dp: [Int] = Array(repeating: 0, count: 100001)
    dp[1] = 1
    
    for index in 2 ..< dp.count {
        dp[index] = (dp[index - 1] + dp[index - 2]) % 1234567
    }
    
    return dp[n]
}


for index in 0 ... 100 {
    print(solution(index))
}
