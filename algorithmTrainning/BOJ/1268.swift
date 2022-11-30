//
//  main.swift
//  algorithmTrainning
//

//백준 1268 임시 반장 정하기

import Foundation

let studentCount = Int(readLine()!)!

var studentClassArray: [[Int]] = Array(repeating: Array(repeating: 0, count: 5), count: studentCount)
var studentVoteArray: [[Bool]] = Array(repeating: Array(repeating: false, count: studentCount), count: studentCount)
var studentVote = Array<Int>(repeating: 0, count: studentCount)

for index in 0 ..< studentCount {
    studentClassArray[index].replaceSubrange(0...4 ,with: readLine()!.split(separator: " ").map { Int(String($0))!
    })
}

for currentStudent in 0 ..< (studentCount - 1) {
    for otherStudent in (currentStudent + 1) ..< studentCount {
        if !studentVoteArray[currentStudent][otherStudent] {
            for grade in 0 ..< 5 {
                if studentClassArray[currentStudent][grade] == studentClassArray[otherStudent][grade] {
                    studentVoteArray[currentStudent][otherStudent] = true
                    studentVoteArray[otherStudent][currentStudent] = true
                    break
                }
            }
        }
    }
}
let maxVote = studentCount - 1
var max = -1
var leader = 0

for index in 0 ..< studentCount {
    var sum = 0
    for currentStudent in studentVoteArray[index] {
        if currentStudent {
            sum += 1
        }
    }
    if sum == maxVote {
        leader = index
        break
    } else if sum > max {
        max = sum
        leader = index
    }
}
print(leader + 1)



