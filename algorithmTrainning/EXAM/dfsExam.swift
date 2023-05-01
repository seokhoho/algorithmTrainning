//
//  main.swift
//  algorithmTrainning
//

import Foundation
//예시 문제 : 0으로만 인접되어 있는 구간 표시하기

let n = 4
let m = 5
var graph = [[1,1,1,1,1],
             [1,1,0,0,1],
             [1,1,1,1,1],
             [1,1,1,1,1]]
var result = 0


func dfs(_ x: Int, _ y: Int) -> Bool{
    //범위를 벗어나면 멈추기
    if x <= -1 || x >= n || y <= -1 || y >= m{
        return false
    }
    
    //방문하지 않았으면 1
    if graph[x][y] == 0{
        graph[x][y] = 1
        
        //상하좌우를 방문처리하고 재귀
        dfs(x - 1, y)
        dfs(x + 1, y)
        dfs(x, y - 1)
        dfs(x, y + 1)
        
        //인접을 다 1로 만들었으면 리턴 트루
        return true
    }
    
    return false
}


for i in 0..<n{
    for j in 0..<m{
        //dfs를 돌아 참일때만 += 1
        if dfs(i, j) == true{
            result += 1
        }
    }
}

print(result)
