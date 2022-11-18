//
//  main.swift
//  algorithmTrainning
//


import Foundation


func bfs(v:Int){
    var queue:[Int] = [v]
    visited[v] = true
    
    // 큐가 빌 때까지 반복
    while queue.count != 0{
    
    // 제일 앞 원소를 꺼낸다
        let v = queue.removeFirst()
        print(v)
        
        // 인접노드 중 방문하지 않은 원소를 큐에 삽입
        for i in graph[v].sorted(){
            if !visited[i]{
                queue.append(i)
                visited[i] = true // 방문처리
            }
        }
    }
}

let graph: [[Int]] = [[], [2, 5], [1, 3, 4],
                      [2, 4], [2, 3] , [1, 6, 7], [5], [5]]

var visited = [Bool](repeating: false, count: graph.count+1)

bfs(v: 1)
// 결과: 1 2 5 3 4 6 7
