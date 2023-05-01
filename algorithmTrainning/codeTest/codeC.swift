//
//  main.swift
//  algorithmTrainning
//


import Foundation

let s = "2021:04:12:16:08:35"
let times = ["01:06:30:00", "01:04:12:00"]

var bankVisit = true
var timer = s.split(separator: ":").map {
    Int(String($0))!
}

for timeIndex in times {
    var timeStamp = Array(repeating: 0, count: 6)
    let tempTime = timeIndex.split(separator: ":").map { Int(String($0))! }
    let count = tempTime.count
    timeStamp.replaceSubrange( (6 - count) ..< 6, with: tempTime)
    
    for stamp in (0 ..< count).reversed()  {
        timer[stamp] += timeStamp[stamp]
        if stamp == 5, timer[stamp] > 59 {
            var ss = timer[stamp] / 60
            timer[stamp] %= 60
            timer[stamp - 1] += ss
        } else if stamp == 4, timer[stamp] > 59 {
            var mm = timer[stamp] / 60
            timer[stamp] %= 60
            timer[stamp - 1] += mm
        } else if stamp == 3, timer[stamp] > 23 {
            var hh = timer[stamp] / 24
            timer[stamp] %= 24
            timer[stamp - 1] += hh   //일 변화시 저축기간 +
        } else if stamp == 2, timer[stamp] > 30 {
            var dd = timer[stamp] / 30
            timer[stamp] %= 30
            timer[stamp - 1] += dd
        }
    }
    
}

//저축확인용 Bool
//구분자로 배열에 넣기 0년 1월 2일 3시 4분 5초
//타이머에 따라 변화할 시간 범위 구현
//[성공여부, 저축기간] 출력
//1달은 30일 1년은 360일

