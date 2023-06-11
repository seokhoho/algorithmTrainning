//
//  main.swift
//  algorithmTrainning
//

import Foundation

// 백준 18353 병사 배치하기, 스터디 문제

/*
7
15 11 4 8 5 2 4
 
 N명의 무작위 나열
 
 내림차순으로 배치 but not sort 각각 비교해서 병사의 수를 최대로 남기기
 [앞이 높고 뒤가 낮게, 앞이 낮으면 삭제]
 
 N의 범위는 1 ~ 2000
 전투력은 10000000 보다 작거나 같은 자연수
 열외해야 하는 병사의 수 출력
 */


/*
7
4 2 5 8 4 11 15
*/

let soldierCount = Int(readLine()!)!
let soldierArray: [Int] = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
var dp: [Int] = Array(repeating: 1, count: soldierCount)

for fIndex in 1 ..< soldierCount {
    for sIndex in 0 ..< fIndex {
        if soldierArray[sIndex] > soldierArray[fIndex] {
            dp[fIndex] = max(dp[fIndex], dp[sIndex] + 1)
        }
    }
}
print(dp)
let result = dp.max()!
print("\(soldierCount - result)")







/*
let soldierCount = Int(readLine()!)!
let soldierArray: [Int] = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
var boolArray: [[Bool]] = Array(repeating: Array(repeating: true, count: soldierCount), count: soldierCount)

for firstIndex in 0 ..< soldierCount - 1 {
    for secondIndex in firstIndex + 1 ..< soldierCount {
        if soldierArray[firstIndex] <= soldierArray[secondIndex] {
            boolArray[firstIndex][secondIndex] = false
        }
    }
}

//for temp in boolArray {
//    print(temp)
//}

var result: Int = 1
for index in 1 ..< soldierCount {
    var num: Int = 1
    num = checkLength(0, index, num)
    if result < num {
        result = num
    }
}
if soldierCount == 1 {
    print(0)
} else {
    print("\(soldierCount - result)")
}

func checkLength(_ first: Int, _ second: Int, _ num: Int) -> Int {
    if second >= soldierCount {
        return num
    }
    if boolArray[first][second] {
        return checkLength(first + 1, second + 1, num + 1)
    } else {
        return checkLength(first, second + 1, num)
    }
}

*/







/*

func recursion(_ firstIndex: Int, _ secondIndex: Int) {
    
    if  !boolArray[firstIndex][secondIndex] { //이미 > 조건으로 false는 Pass
        return recursion(firstIndex, secondIndex + 1)
    } else if secondIndex가 최대치 일 때 { //
        firstIndex += 1
        return recursion(f)
    } else if firstIndex가 최대 치 일때 {
        return
    }
    
    if firstIndex > secondIndex {
        
        boolArray[firstIndex][secondIndex] = false
        return recursion(firstIndex, secondIndex + 1 )
    }
    
    
}


*/









/*
let soldierCount = Int(readLine()!)!
var soldierPowerArray: [Int] = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
var cunnectSoldierCount: Int = 1


//앞보다 큰지 아닌지
func deepInside(_ currentSoldier: Int, _ nextSoldier: Int, _ soldierArray: [Int]) -> Int {
    if nextSoldier >= soldierCount {
        return cunnectSoldierCount
    }
    
    if soldierArray[currentSoldier] < soldierArray[nextSoldier] {
        return deepInside(currentSoldier, nextSoldier + 1, soldierArray)
    } else {
        cunnectSoldierCount += 1
        return deepInside(nextSoldier, nextSoldier + 1, soldierArray)
    }
    
}

var maxSoldier = soldierCount
for index in 0 ..< soldierCount - 1{
    cunnectSoldierCount = 1
    cunnectSoldierCount = deepInside(index, index + 1, soldierPowerArray)
    if maxSoldier > soldierCount - cunnectSoldierCount {
        maxSoldier = soldierCount - cunnectSoldierCount
    }
}
let result = soldierCount - maxSoldier
print(result)


*/
