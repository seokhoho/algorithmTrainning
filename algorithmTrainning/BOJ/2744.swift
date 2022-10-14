//
//  main.swift
//  algorithmTrainning
//

//백준 2744 대소문자 바꾸기

//영어 소문자와 대문자로 이루어진 단어를 입력받은 뒤, 대문자는 소문자로, 소문자는 대문자로 바꾸어 출력하는 프로그램을 작성하시오.

//Array<Character>(), String.append(), Character.lowercased(), Character.uppercased()

import Foundation

let stringInput = Array(readLine()!)
var result = ""

for input in stringInput {
    if input.asciiValue! > 64 , input.asciiValue! < 91 {
        result.append(input.lowercased())
    } else if input.asciiValue! > 96 , input.asciiValue! < 123 {
        result.append(input.uppercased())
    }
}

print(result)
