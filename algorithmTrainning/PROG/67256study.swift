//
//  67256study.swift
//  algorithmTrainning
//

import Foundation

// 프로그래머스 67256 키패드 누르기, 스터디 문제

//각 손가락은 상하좌우로만 움직임 가능 이동 한 칸은 거리 1
/*
 1 2 3
 4 5 6
 7 8 9
 * 0 #
 */
//왼손은 * 오른손은 #에서 시작
/*
 왼손은 1, 4, 7
 오른손은 3 6 9
 2 5 8 0 은 두 손가락 중 현재 키패드의 위치에서 더 가까운 손 사용
 
 두 손의 거리가 같다면 오른손 잡이는 오른손 왼손잡이는 왼손

[1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5]    "right"    "LRLLLRLLRRL"
 [7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2] "left" "LRLLRRLLLRR"
 */

let numbers: [Int] = [7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2]

let hand: String = "left"

var result: String = ""

var leftHand: (Int, Int) = (3, 0)
var rightHand: (Int, Int) = (3, 2)

let two: (Int, Int) = (0, 1)
let five: (Int, Int) = (1, 1)
let eight: (Int, Int) = (2, 1)
let zero: (Int, Int) = (3, 1)

for number in numbers {
    
    switch number {
    case 1, 4, 7:
        leftHand = ((number - 1)/3, 0)
        result += "L"
    case 3, 6, 9:
        rightHand = ((number - 1)/3 , 2)
        result += "R"
    case 2:
        choiceHand(two)
    case 5:
        choiceHand(five)
    case 8:
        choiceHand(eight)
    case 0:
        choiceHand(zero)
    default:
        break
    }
    
}

print("\(result)")

func absSum(_ handXY: (x: Int, y: Int), _ numberXY: (x :Int, y: Int)) -> Int {
    let result = abs(handXY.x - numberXY.x) + abs(handXY.y - numberXY.y)
    return result
}

func choiceHand(_ xy: (x: Int, y: Int)) {
    let left = absSum(leftHand , (xy.x, xy.y))
    let right = absSum(rightHand, (xy.x, xy.y))
    
    if left == right && hand.contains("left") {
        leftHand = (xy.x, xy.y)
        result += "L"
    } else if left == right {
        rightHand = (xy.x, xy.y)
        result += "R"
    } else if left > right {
        rightHand = (xy.x, xy.y)
        result += "R"
    } else {
        leftHand = (xy.x, xy.y)
        result += "L"
    }
}
