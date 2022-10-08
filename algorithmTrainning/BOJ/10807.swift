//
//  main.swift
//  algorithmTrainning
//

//백준 10807 개수 세기

//총 N개의 정수가 주어졌을 때, 정수 v가 몇 개인지 구하는 프로그램을 작성하시오.

import Foundation

//배열을 만들어 놓고
//엽력 값마다 1씩 추가
//그리고 찾는 값을 인덱스로 놓고 출력

var plusNumberArray = Array<Int>(repeating: 0, count: 101)
var minusNumberArray = Array<Int>(repeating: 0, count: 101)

let numberCount = readLine()

if let numberCount = numberCount { //옵셔널 바인딩
    let numberCount = Int(numberCount) //정수로 형변환
    if let numberCount = numberCount { //정수 옵셔널 바인딩
        let number = readLine() //입력
        if let number = number { //입력 옵셔널 바인딩
            let number = number.components(separatedBy: " ") //배열에 " "구분으로 대입
            for index in 0 ..< numberCount { //문제 수 만큼 반복
                let counting = Int(number[index]) //정수로 형변환
                if let counting = counting { //정수 옵셔널 바인딩
                    if counting < 0 {
                        minusNumberArray[counting * -1] += 1
                    } else {
                        plusNumberArray[counting] += 1
                    }
                }
            }
        }
    }
}
let answer = readLine()
if let answer = answer {
    let answer = Int(answer)
    if let answer = answer {
        if answer < 0 {
            print(minusNumberArray[answer * -1])
        } else {
            print(plusNumberArray[answer])
        }
    }
}
