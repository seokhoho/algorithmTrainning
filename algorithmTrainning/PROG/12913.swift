//
//  main.swift
//  algorithmTrainning
//

//프로그래머스 12913 땅따먹기

import Foundation


var sameLand = [[1,2,3,5],[5,6,7,8],[4,3,2,1]]


for index in 1 ..< sameLand.count {
    
    sameLand[index][0] += max(sameLand[index - 1][1], sameLand[index - 1][2], sameLand[index - 1][3])
    sameLand[index][1] += max(sameLand[index - 1][0], sameLand[index - 1][2], sameLand[index - 1][3])
    sameLand[index][2] += max(sameLand[index - 1][0], sameLand[index - 1][1], sameLand[index - 1][3])
    sameLand[index][3] += max(sameLand[index - 1][0], sameLand[index - 1][1], sameLand[index - 1][2])
}

print(sameLand[sameLand.count - 1].max() ?? 0)









