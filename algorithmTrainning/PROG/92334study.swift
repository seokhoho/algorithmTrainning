//
//  main.swift
//  algorithmTrainning
//


import Foundation

/*
 프로그래머스 신고 결과 받기 92334
 
 각 유저는 한 번에 한 명의 유저를 신고할 수 있습니다.
 신고 횟수에 제한은 없습니다. 서로 다른 유저를 계속해서 신고할 수 있습니다.
 한 유저를 여러 번 신고할 수도 있지만, 동일한 유저에 대한 신고 횟수는 1회로 처리됩니다.
 
 k번 이상 신고된 유저는 게시판 이용이 정지되며, 해당 유저를 신고한 모든 유저에게 정지 사실을 메일로 발송합니다.
 유저가 신고한 모든 내용을 취합하여 마지막에 한꺼번에 게시판 이용 정지를 시키면서 정지 메일을 발송합니다.

 */


let id_list: [String] = ["muzi", "frodo", "apeach", "neo"]
let report: [String] = ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"]
let k: Int = 2
// result = [2,1,1,0]

// muzi frode = 무지가 프로도를 신고한 것
// 한번에 한번 신고, 같은 사용자 신고 x
// 신고당한 사용자가 정지 당하면 신고한 사용자에게 +1

// report를 set으로 신고내용중복을 삭제하고
// 신고당한 사용자에게 신고카운트가 몇개인지 변수가 필요함
// 딕셔너리로 키는 신고당한 사용자 값에 신고한 사용자를 "값 신고사용자"
// 식으로 추가하며 카운트도 매기고 아이디 리스트 딕셔너리를 만들어 정지된 사용자만큼 숫자를 올려서 출력

//결과를 받을 result 정수배열 크기는 입력값 id_list의 크기
var result: [Int] = Array(repeating: 0, count: id_list.count)

var reportDictionary: [String: String] = [:] //
var idDictionary: [String: Int] = [:] //결과값으로 받을 정지받은 신고자수
let newReport = Set(report) //중복제거
//print(newReport) 중복제거한 값 확인
//["apeach frodo", "frodo neo", "muzi neo", "apeach muzi", "muzi frodo"]

// 신고자 이름과 신고자가 입력받을 메일의 수 딕셔너리로 선언
for index in id_list {
    idDictionary.updateValue(0, forKey: index)
}
//print(idDictionary)
//["apeach": 0, "neo": 0, "frodo": 0, "muzi": 0]


//중복제거 된 신고명령어를 문자열배열로 신고자, 신고당한사용자로 나눈다
for index in newReport {
    let temp = index.split(separator: " ").map { String($0) }
    
    //딕셔너리에 있는걸 확인하고 입력하기
    if !reportDictionary.keys.contains(temp[1]) {
        reportDictionary.updateValue(temp[0], forKey: temp[1])
    } else {
        let string = reportDictionary[temp[1]] ?? ""
        reportDictionary.updateValue("\(string) \(temp[0])", forKey: temp[1])
    }
    
}
//print(reportDictionary)
//["neo": "frodo muzi", "frodo": "apeach muzi", "muzi": "apeach"]


//신고당한 사용자를 기준으로 신고한 사용자를 문자열배열로 나누어 그 길이가 k와 같거나 크면 신고한 사용자를 idDictionary에 키값으로 사용해서 1을 더해준다
for index in reportDictionary.keys {
    let reporter: [String] = reportDictionary[index]!.split(separator: " ").map { String($0) }
    let length: Int = reporter.count
    
    if length >= k {
        for count in reporter {
            idDictionary[count]! += 1
        }
    }
}
//print(idDictionary)
//["apeach": 1, "neo": 0, "frodo": 1, "muzi": 2]



//입력받은 id_list의 순서대로 result 정수형 배열에 idDictionary 정수값을 할당
for index in 0 ..< id_list.count {
    result[index] = idDictionary[id_list[index]]!
}

print(result) //return
//[2, 1, 1, 0]
