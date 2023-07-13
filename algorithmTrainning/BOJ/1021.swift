//
//  main.swift
//  algorithmTrainning
//


import Foundation

/*
 백준 1021 회전하는 큐
 
 첫 번째 원소를 뽑아낸다. 이 연산을 수행하면, 원래 큐의 원소가 a1, ..., ak이었던 것이 a2, ..., ak와 같이 된다.
 왼쪽으로 한 칸 이동시킨다. 이 연산을 수행하면, a1, ..., ak가 a2, ..., ak, a1이 된다.
 오른쪽으로 한 칸 이동시킨다. 이 연산을 수행하면, a1, ..., ak가 ak, a1, ..., ak-1이 된다.
 큐에 처음에 포함되어 있던 수 N이 주어진다. 그리고 지민이가 뽑아내려고 하는 원소의 위치가 주어진다. (이 위치는 가장 처음 큐에서의 위치이다.) 이때, 그 원소를 주어진 순서대로 뽑아내는데 드는 2번, 3번 연산의 최솟값을 출력하는 프로그램을 작성하시오.
 
 중요한 포인트는 숫자는 배열 앞에서만 뽑아나오는 것
 https://www.acmicpc.net/board/view/65693
 
 */

var input: [Int] = readLine()!.split(separator: " ").map {
    Int(String($0))!
}
let arrayCount: Int = input[0]
let outputCount: Int = input[1]

//회전할 큐를 만들어준다
var mainArray: [Int] = Array(1 ... arrayCount)
//빼내올 1 2 3의 아웃풋 배열을 만들어준다
let outputArray: [Int] = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

//회전 동작을 할 때마다 카운트 해줄 변수선언
var resultCount: Int = 0

for index in 0 ..< outputCount {
    //앞으로 한번 뒤로 한번 돌려서 나온 값을 비교해보자
    var startArray: [Int] = mainArray
    var endArray: [Int] = mainArray
    let start: Int = startQueue(&startArray, findNumber: outputArray[index])
    let end: Int = endQueue(&endArray, findNumber: outputArray[index])
//    print("이번에 빼게될 숫자 \(outputArray[index])")
//    print("앞으로 돌려서 나온 count \(start)")
//    print("뒤에서 돌려서 나온 count \(end)")
    
    if start > end {
        resultCount += end
        mainArray = endArray
    } else {
        resultCount += start
        mainArray = startArray
    }
 //   print("메인 배열에 할당 된 것 \(mainArray)")
    
}

print(resultCount)

func startQueue(_ startArray: inout [Int],findNumber num: Int) -> Int {
    var count = 0
    var temp = 0
    while temp != num {
        temp = startArray.removeFirst()
        
        if temp != num {
            startArray.append(temp)
            count += 1
        }
    //    print("앞으로 빼는 배열 \(startArray)")
    }
    
    return count
}

func endQueue(_ endArray: inout [Int], findNumber num: Int) -> Int {
    
    var count = 0
    var temp = 0
    while temp != num {
        temp = endArray.removeLast()
        if temp != num {
            endArray.insert(temp, at: 0)
            count += 1
        }
    //    print("뒤에서 빼는 배열 \(endArray)")
    }
    
    return count + 1
}



