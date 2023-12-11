//
//  main.swift
//  algorithmTrainning
//

import Foundation

/*
 프로그래머스 12934 정수 제곱근 판별
 */

func solution(_ n:Int64) -> Int64 {

    switch n {
    case 1:
        return 4
    case 2, 3:
        return -1
    default:
        for x in 2 ... (n / 2) + 1 {
            if n / x == x && n % x == 0{
                return (x + 1) * (x + 1)
            }
        }
    }
    return -1
}


