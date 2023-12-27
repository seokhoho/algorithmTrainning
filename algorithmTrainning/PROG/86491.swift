//
//  main.swift
//  algorithmTrainning
//

import Foundation

// 프로그래머스 86491 최소직사각형

func solution(_ sizes:[[Int]]) -> Int {
    var w: Int = 0
    var h: Int = 0
    
    for size in sizes {
        let tempW = max(size[0], size[1])
        let tempH = min(size[0], size[1])
        
        if w < tempW {
            w = tempW
        }
        if h < tempH {
            h = tempH
        }
    }
    return w * h
}

//print(solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))
