//
//  main.swift
//  algorithmTrainning
//


import Foundation

/*
 프로그래머스 실패율 42889

 실패율은 다음과 같이 정의한다.
 스테이지에 도달했으나 아직 클리어하지 못한 플레이어의 수 / 스테이지에 도달한 플레이어 수
 
 전체 스테이지의 개수 N --
 게임을 이용하는 사용자가 현재 멈춰있는 스테이지의 번호가 담긴 배열 stages가 매개변수 --
 실패율이 높은 스테이지부터 내림차순으로 스테이지의 번호가 담겨있는 배열을 return

 stages에는 1 이상 N + 1 이하의 자연수가 담겨있다.
 각 자연수는 사용자가 현재 도전 중인 스테이지의 번호를 나타낸다.
 단, N + 1 은 마지막 스테이지(N 번째 스테이지) 까지 클리어 한 사용자를 나타낸다.
 
 만약 실패율이 같은 스테이지가 있다면 작은 번호의 스테이지가 먼저 오도록 하면 된다.
 스테이지에 도달한 유저가 없는 경우 해당 스테이지의 실패율은 0 으로 정의한다.
 
 문제를 이해하자
 */
let N = 5
let stages = [2, 1, 2, 6, 2, 4, 3, 3]
var stagesArray: [[Int]] = Array(repeating: Array(repeating: 0, count: N + 1), count: 2)

for index in 0 ..< stages.count {
    stagesArray[0][stages[index] - 1] += 1
    for correntStage in 0 ..< stages[index] - 1 {
        stagesArray[1][correntStage] += 1
    }
}

var resultArray: [[Double]] = Array(repeating: Array(repeating: 0.0, count: 2), count: N)
var failCount: Double = 0.0
var tryCount: Double = 0.0

for index in 0 ..< N {
    failCount = Double(stagesArray[0][index])
    tryCount = Double(stagesArray[1][index]) + failCount

    resultArray[index][0] = Double(index + 1)
    resultArray[index][1] = failCount / tryCount
}

resultArray = resultArray.sorted(by: {
    $0[1] > $1[1]
})

var result: [Int] = Array(repeating: 0, count: N)
if resultArray[0][0] == 0.0 {
    let zero: [Int] = [0]
       return zero
} else {
    for index in 0 ..< N {
        result[index] = Int(resultArray[index][0])
    }
}
print(result)



/*---------------------------------------------
//[0][] 인덱스는 스테이지에 실패한 사람의 수 [1][] 인덱스는 거쳐간 사람들 수
//[0][] + [1][] = 시도한 수.         실패한 수/시도한 수
//Double로 나눠서 sort 하면 끗

for index in 0 ..< N {
    print("\(index + 1) 스테이지는 \(stagesArray[0][index])/\(stagesArray[1][index] + stagesArray[0][index])  \(Double(stagesArray[0][index]) / Double(stagesArray[1][index] + stagesArray[0][index]))")
}

 1 스테이지는 1/8  0.125
 2 스테이지는 3/7  0.42857142857142855
 3 스테이지는 2/4  0.5
 4 스테이지는 1/2  0.5
 5 스테이지는 0/1  0.0
 
 
 정렬 전
 for index in resultArray {
     print(index)
 }
 /*
  [1.0, 0.125]
  [2.0, 0.42857142857142855]
  [3.0, 0.5]
  [4.0, 0.5]
  [5.0, 0.0]
  */
 
 정렬 후
 for index in resultArray {
     print(index)
 }
 /*
  [3.0, 0.5]
  [4.0, 0.5]
  [2.0, 0.42857142857142855]
  [1.0, 0.125]
  [5.0, 0.0]
  */
 */
