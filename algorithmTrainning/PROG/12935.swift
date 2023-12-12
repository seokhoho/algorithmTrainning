//
//  main.swift
//  algorithmTrainning
//
/*
 프로그래머스 12935 제일 작은 수 제거하기
 */

func solution(_ arr:[Int]) -> [Int] {
    guard arr.count > 1 else { return [-1]}
    var result = arr
    let minArr = arr.sorted(by: <)
    if let minIndex = result.firstIndex(of: minArr[0]) {
        result.remove(at: minIndex)
    }
    return result
}

//print(solution([1, 2]))
