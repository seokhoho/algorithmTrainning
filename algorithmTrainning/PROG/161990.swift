//
//  main.swift
//  algorithmTrainning
//

import Foundation

/*
 프로그래머스 161990 바탕화면 정리
 
 머쓱이의 컴퓨터 바탕화면의 상태를 나타내는 문자열 배열 wallpaper가 매개변수로 주어질 때 최소한의 이동거리를 갖는 드래그의 시작점과 끝점을 담은 정수 배열을 return하는 solution 함수를 작성해 주세요. 드래그의 시작점이 (lux, luy), 끝점이 (rdx, rdy)라면 정수 배열 [lux, luy, rdx, rdy]를 return하면 됩니다.
 
 wallpaper: [String]    result: [Int]
 [".#...", "..#..", "...#."]
 [0, 1, 3, 4]
 ["..........", ".....#....", "......##..", "...##.....", "....#....."]    
 [1, 3, 5, 8]
 
 */

// 최상하좌우 좌표가 필요하다
// 처음 contains # 이면 최상단, 계속 입력 받으면서 마지막에 입력된 #이 최하단
// 좌우측은 그 때 그 때 maxLeft maxRight를 비교하면서 입력


func solution(_ wallpaper:[String]) -> [Int] {

    var lux: Int = wallpaper.count
    var luy: Int = wallpaper[0].count
    
    var rdx: Int = -1
    var rdy: Int = -1
    
    
    for index in 0 ..< wallpaper.count {
        let paper = wallpaper[index]
        if paper.contains("#") {
            if lux > index {
                lux = index
            }
            
            if let first = paper.firstIndex(of: "#") {
                let distance = paper.distance(from: paper.startIndex, to: first)
                if luy > distance {
                    luy = distance
                }
            }
            
            if let last = paper.lastIndex(of: "#") {
                let distance = paper.distance(from: paper.startIndex, to: last)
                if rdy < distance + 1 {
                    rdy = distance + 1
                }
            }
            if rdx < index + 1 {
                rdx = index + 1
            }
            
        }
        
    }
    
    return [lux, luy, rdx, rdy]
}

print(solution( [".....", "....#"]))
// [1, 4, 2, 5]
