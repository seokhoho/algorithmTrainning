//
//  main.swift
//  algorithmTrainning
//

//백준 9086 문자열

//문자열을 입력으로 주면 문자열의 첫 글자와 마지막 글자를 출력하는 프로그램을 작성하시오.

import Foundation

let solveNumberS = readLine()
if let solveNumberS = solveNumberS {
    let solveNumberI = Int(solveNumberS)
    if let solveNumberI = solveNumberI {
        for _ in 0 ... solveNumberI - 1 {
            let solveString = readLine()
            if let solveString = solveString {
                if let first = solveString.first,
                    let last = solveString.last {
                    print("\(first)\(last)")
                }
            }
        }
    }
}
