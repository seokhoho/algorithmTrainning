//
//  main.swift
//  algorithmTrainning
//

import Foundation

// 프로그래머스 92334 신고 결과 받기

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
  
    var mailDic: [String: Int] = [:]
    
    var dic: [String: [String]] = [:]
    // 각 유저를 dictionary에 생성
    for id in id_list {
        dic.updateValue([], forKey: id)
        mailDic.updateValue(0, forKey: id)
    }
    // 신고당한 유저를 key로 신고한 유저를 value로 누구에게 신고당했는지 값 넣기
    for message in report {
        
        let id = message.components(separatedBy: " ")
        
        if let value = dic[id[1]], value.contains(id[0]) {
            continue
        } else {
            dic[id[1]]?.append(id[0])
        }
    }
    
    // dic에서 k번 만큼 신고당한 유저(key)를 신고한 유저마다 메일 개수 증가 시키기
    for id in id_list {
        if let count = dic[id]?.count, count >= k {
            if let value = dic[id] {
                for id in value {
                    if let mail = mailDic[id] {
                        mailDic[id] = mail + 1
                    }
                }
            }
        }
    }
    
    var result: [Int] = []
    // 입력값 순서대로 출력값에 입력
    for id in id_list {
        if let count = mailDic[id] {
            result.append(count)
        }
        
    }
    
    return result
}

//print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))



