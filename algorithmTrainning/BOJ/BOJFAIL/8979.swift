//
//  main.swift
//  algorithmTrainning
//
// 백준 8979 올림픽

// 한 줄에 입력받은 국가 K의 등수를 하나의 정수로 출력

import Foundation

let inputArray = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

var allNations = inputArray[0] //전체 국가
let selectNation = inputArray[1] - 1 //선택한 국가
var rankNumber = 1 //순위를 매겨줄 변수
var rank : [Int] = Array(repeating: 1, count: allNations) //위치값에 순위가 매겨질 배열
var medal : [[Int]] = Array(repeating: Array(repeating: 0, count: 4), count: allNations)
//나라숫자와 메달의 숫자를 입력받을 이차원 배열

//입력값을 배열에 대입
for _ in 0 ..< allNations {
    
    let inputMedals = readLine()!.split(separator: " ").map {
        Int(String($0))!
    }
    let nationNumber = inputMedals[0] - 1 //배열의 위치값으로 사용하기 위해 -1
    let gold = inputMedals[1]
    let silver = inputMedals[2]
    let bronze = inputMedals[3]
    
    medal[nationNumber][0] = nationNumber
    medal[nationNumber][1] = gold
    medal[nationNumber][2] = silver
    medal[nationNumber][3] = bronze
}

//print(medal)
/**[[1, 1, 2, 0],
 [2, 0, 1, 0],
 [3, 0, 1, 0],
 [4, 0, 0, 1]]**/


//메달 순으로 정렬
let ranking : [[Int]] = medal.sorted(by: { $0[3] > $1[3] }).sorted(by: { $0[2] > $1[2] }).sorted(by: { $0[1] > $1[1] })
  
//print(ranking)
/**[[1, 1, 2, 0],
 [2, 0, 1, 0],
 [3, 0, 1, 0],
 [4, 0, 0, 1]]**/


allNations -= 1 //위치값으로 사용하기 위해 -1

/*메달 순으로 정렬 된 ranking 배열의 1번이 2번을 바라보게하고 금 은 동을 비교하여 같으면 같은 등수
 다르면 rankNumber에 +1로 등수를 올린다
 **/
for num in 0 ..< allNations {
    if ranking[num][1] == ranking[num + 1][1],
        ranking[num][2] == ranking[num + 1][2],
        ranking[num][3] == ranking[num + 1][3] {
        rank[ranking[num][0]] = rankNumber
        //메달 순으로 정렬된 국가 번호를 rank의 위치값으로 사용해서 등수를 매김
    } else {
        rank[ranking[num][0]] = rankNumber
        rankNumber += 1
        //다음 순서의 국가의 등수를 올리기 위한 +1
    }
}
rank[ranking[allNations][0]] = rankNumber
//마지막 국가의 순위 대입

print(rank[selectNation])
//선택된 국가 출력하기


