//
//  main.swift
//  algorithmTrainning
//



import Foundation

// 프로그래머스 42888 오픈채팅방

//["Prodo님이 들어왔습니다.", "Ryan님이 들어왔습니다.", "Prodo님이 나갔습니다.", "Prodo님이 들어왔습니다."]


/*
 채팅방에서 닉네임을 변경하는 방법은 다음과 같이 두 가지이다.
 
 채팅방을 나간 후, 새로운 닉네임으로 다시 들어간다.
 채팅방에서 닉네임을 변경한다.
 
 명령어는 Enter, Leave, Change
 
 입력값은 "명령어 아이디 이름" 순서
 딕셔너리로 아이디와 이름을 저장하고
 아이디를 따로 배열에 저장해서 순서를 지키고
 
 */

let record: [String] = ["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]



var idNickName: [String: String] = [:]
var indexId: [Int: String] = [:]
var indexMessage: [Int: String] = [:]
var count = 0


let record: [String] = [
    "Enter uid1234 Muzi",
    "Enter uid4567 Prodo",
    "Leave uid1234",
    "Enter uid1234 Prodo",
    "Change uid4567 Ryan"]

for index in 0 ..< record.count {
    
    
    let recordSplit: [String] = record[index].split(separator: " ").map {
        String($0)
    }
    // recordSplit: [String] = ["Enter", "uid1234", "Muzi"]
    
    
    
    switch recordSplit[0] {
    case "Enter":
        indexId.updateValue(recordSplit[1], forKey: count) // index번째 순서에 무슨 아이디가 있었는지
        indexMessage.updateValue("님이 들어왔습니다.", forKey: count) // index번째 순서에 무슨 행동을 했는지 메세지를 남긴다
        idNickName.updateValue(recordSplit[2], forKey: recordSplit[1]) // 무슨 아이디와 무슨 닉네임인지
        count += 1 // 다음 인덱스 (순서) 로 넘어가기
    case "Leave":
        indexId.updateValue(recordSplit[1], forKey: count) //index번째 순서에 무슨 아이디가 있었는지
        indexMessage.updateValue("님이 나갔습니다.", forKey: count) //index번째 순서에 무슨 행동을 했는지 메세지를 남긴다
        count += 1 // 다음 인덱스 (순서)로 넘어간다
    case "Change":
        idNickName[recordSplit[1]] = recordSplit[2] // key값인 uid1234의 속성(닉네임)을 새로 바꿔준다
    default:
        break
    }
    
}
// index 0의 키를 가진 uid1234의 닉네임과 index 0의 키를 가진 메세지를 합쳐서 출력
for index in 0 ..< count {
    print("\(idNickName[indexId[index]!]!)\(indexMessage[index]!)")
}


