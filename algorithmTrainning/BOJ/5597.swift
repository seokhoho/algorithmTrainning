//
//  main.swift
//  algorithmTrainning
//
import Foundation

//백준 5597 과제 안 내신 분..?

//X대학 M교수님은 프로그래밍 수업을 맡고 있다. 교실엔 학생이 30명이 있는데, 학생 명부엔 각 학생별로 1번부터 30번까지 출석번호가 붙어 있다.
//교수님이 내준 특별과제를 28명이 제출했는데, 그 중에서 제출 안 한 학생 2명의 출석번호를 구하는 프로그램을 작성하시오.

var studentList = [Bool](repeating: false, count: 30)

for _ in 0 ... 28 {
    let studentStringIndex = readLine()
    if let studentTemp = studentStringIndex {
        let studentIntIndex = Int(studentTemp)
        if let studentIndex = studentIntIndex {
            studentList[studentIndex - 1] = true
        }
    }
}

for index in 0 ... (studentList.count - 1) {
    if !studentList[index] {
        print(index + 1)
    }
}
