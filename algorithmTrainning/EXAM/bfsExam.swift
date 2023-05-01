//
//  main.swift
//  algorithmTrainning
//

import Foundation

//예시문제
//1이 길 0이 벽인 미로에서 첫번째에서 마지막까지 갔을 때 미로 최단 경로 구하기
let n = 5
let m = 6
var graph = [[1,0,1,1,1,1],
             [1,1,1,1,0,1],
             [0,0,0,1,0,1],
             [1,1,1,1,0,1],
             [1,1,0,1,0,1]]
//상하좌우
let dx = [-1,1,0,0]
let dy = [0,0,-1,1]


func bfs(_ x: Int, _ y: Int) -> Int{
    var queue = [(x, y)]
    
    while !queue.isEmpty{
        let xy = queue.removeFirst()
        let x = xy.0
        let y = xy.1
        
        for i in 0..<4{
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx < 0 || nx >= n || ny < 0 || ny >= m{
                continue
            }
            if graph[nx][ny] == 0{
                continue
            }
            if graph[nx][ny] == 1{
                graph[nx][ny] = graph[x][y] + 1
                queue += [(nx, ny)]
            }
        }
    }
    
    graph.forEach{
        print($0)
    }
    return graph[n - 1][m - 1] // 마지막 왔을 때 최단 거리 반환
}

print(bfs(0, 0))
