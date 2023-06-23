//
//  main.swift
//  algorithmTrainning
//


import Foundation

// 백준 1235 학생 번호

//각 문자열의 뒤 3자리부터 중복을 제거하는 Set에 insert로 넣으며
//튜플 반환 (false, 입력값)으로 확인하여 true가 나오면 다음 문자열 입력
/*
 1 반복문으로 입력받은 문자열을 1의 자리부터 끊어주고 한 칸씩 문자열 최대 길이로 증가
 Set 변수를 선언
 2 반복문으로 Set에 insert로 넣으며 false 리턴하면 break로 1 반복문으로 돌아가기
 2 반복문을 나오면 if문으로 학생 수와 set의 count를 비교 == 이면 break로 1 반복문 탈출
 1 반복문의 index를 출력
 */

let studentCount: Int = Int(readLine()!)!
var student: [String] = []
for _ in 0 ..< studentCount {
    student.append(readLine()!)
}
var setStudent: Set<String> = []
var result: Int = 0
for index in 1 ... student[0].count {
    setStudent = []
    for num in 0 ..< studentCount {
        guard setStudent.insert(String(student[num].suffix(index))) == (true, String(student[num].suffix(index))) else {
            break
        }
    }
    if studentCount == setStudent.count {
        result = index
        break
    }
}
print("\(result)")
