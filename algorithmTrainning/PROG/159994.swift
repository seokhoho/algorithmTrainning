//
//  main.swift
//  algorithmTrainning
//


import Foundation

// 프로그래머스 159994 카드 뭉치

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var card1 = cards1
    var card2 = cards2
    var result = true
    var flag = false
    
    for card in goal {
        if let one = card1.first, card.elementsEqual(one){
            card1.removeFirst()
            continue
        }
        if let two = card2.first, card.elementsEqual(two){
            card2.removeFirst()
            continue
        }
        if !flag {
            result = false
            break
        }
    }
    return result ? "Yes" : "No"
}

//print(solution(["a", "b", "c"], ["are", "very"], ["are", "very"]))
