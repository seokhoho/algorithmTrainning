//
//  main.swift
//  algorithmTrainning
//


import Foundation

/*
 프로그래머스 77884 약수의 개수와 덧셈
 
 두 정수 left와 right가 매개변수로 주어집니다. left부터 right까지의 모든 수들 중에서, 약수의 개수가 짝수인 수는 더하고, 약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.
 
 left ... right 약수가 짝수면 그 수를 +, 약수가 홀수면 그 수를 - return
 
 1 ≤ left ≤ right ≤ 1,000
 
 */

func solution(_ left:Int, _ right:Int) -> Int {
    
    var sum: Int = 0
    
    for num in left ... right {
        var count: Int = 0
        
        for index in 1 ... num {
            if num % index == 0 {
                count += 1
            }
        }
        if count % 2 == 0 {
            sum += num
        } else {
            sum -= num
        }
    }
    return sum
}

//print(solution(24, 27))
