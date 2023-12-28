//
//  main.swift
//  algorithmTrainning
//

import Foundation

// 프로그래머스 77484 로또의 최고 순위와 최저 순위

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
  
    var zero: Int = 0
    var count: Int = 0
    for lotto in lottos {
        if lotto > 0 {
            if win_nums.contains(lotto) {
                count += 1
            }
        } else {
            zero += 1
        }
    }
    var low: Int = 0

    switch count {
    case 6:
        low = 1
    case 5:
        low = 2
    case 4:
        low = 3
    case 3:
        low = 4
    case 2:
        low = 5
    default:
        low = 6
        break
    }
    return [low - zero > 0 ? low - zero : 1 , low]
}

//print(solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35]))
