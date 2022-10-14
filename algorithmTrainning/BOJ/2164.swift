//
//  main.swift
//  algorithmTrainning
//

//백준 2164 카드2

/**N장의 카드가 있다. 각각의 카드는 차례로 1부터 N까지의 번호가 붙어 있으며, 1번 카드가 제일 위에, N번 카드가 제일 아래인 상태로 순서대로 카드가 놓여 있다.
 
 이제 다음과 같은 동작을 카드가 한 장 남을 때까지 반복하게 된다. 우선, 제일 위에 있는 카드를 바닥에 버린다. 그 다음, 제일 위에 있는 카드를 제일 아래에 있는 카드 밑으로 옮긴다.*/


//Queue

import Foundation


let count = Int(readLine()!)!
var queue = Queue<Int>()

for index in 1 ... count {
    queue.enqueue(index)
}

while queue.count > 1 {
    queue.dequeue()
    queue.enqueue(queue.dequeue()!)
}
print(queue.dequeue()!)


struct Queue<T> {

    private var queue: [T?] = []
    private var head: Int = 0
    
    public var count: Int {
        return queue.count
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        
        guard head <= queue.count, let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1
        
        if head > queue.count / 4 {
            queue.removeFirst(head)
            head = 0
        }
        return element
    }
}
