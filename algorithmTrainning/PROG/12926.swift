//
//  main.swift
//  algorithmTrainning
//

// 프로그래머스 12926 시저 암호

func solution(_ s:String, _ n:Int) -> String {
    
    var result: String = ""
    
    for char in s {
        if char != " " {
            var ascii = Unicode.Scalar(String(char))!.value
            
            switch ascii {
            case 65 ... 90:
                if ascii + UInt32(n) > 90 {
                    ascii -= 26
                }
            case 97 ... 122:
                if ascii + UInt32(n) > 122 {
                    ascii -= 26
                }
            default:
                break
            }
            result += Unicode.Scalar(ascii + UInt32(n))!.description
        } else {
            result += " "
        }
    }
    return result
}

//print(solution("A Z a z", 1))
