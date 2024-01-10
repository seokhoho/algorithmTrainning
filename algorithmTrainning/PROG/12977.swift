//
//  main.swift
//  algorithmTrainning
//


import Foundation

// 프로그래머스 12977 소수 만들기

func solution(_ nums:[Int]) -> Int {
    
    // 전부 더해서 넣기
    var arr: [Int] = []
    for first in 0 ..< nums.count - 2 {
        for second in first + 1 ..< nums.count - 1{
            for third in second + 1 ..< nums.count {
                arr.append(nums[first] + nums[second] + nums[third])
            }
        }
    }
    // 배열 돌리기 위해 중복 제거하기
    var setArray = Set(arr)
    // 소수 담을 배열
    var tempArr: [Int] = []
    
    // 중복제거된 배열의 값들 중에 소수 찾기
    OUT: for num in setArray {
        var temp = 0
        for index in 2 ... (num / 2) + 1{
            if num % index == 0 {
                continue OUT
            }
        }
        tempArr.append(num)
    }
    
    let result = arr.filter {
        tempArr.contains($0)
    }
    return result.count
}

//print(solution([1,2,7, 6, 4]))
