import UIKit

class QueueStacks {
    var s1 = [Int]()
    var s2 = [Int]()
        
    }
    
    func enQueue(data: Int) {
        s1.append(data)
    }
    
    func deQueue() {
        var x = -1
        if s2.isEmpty {
            if s1.isEmpty {
                print("Queue is empty")
                return x
            } else {
                s2.append(s1.removeFirst())
            }
        }
        x = s2.removeFirst()
        return x
    }


func queueUsingStacksTest() {
    let elements = [2,3,1,4,5,7,6,8,9]
    let queue = QueueStacks()
    
    for item in elements {
        queue.enQueue(data: item)
    }
    var val = queue.deQueue()
    while val != -1 {
        print(val)
        val = queue.deQueue()
    }
}
