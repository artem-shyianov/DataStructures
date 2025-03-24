protocol Stackable {
    associatedtype Element
    mutating func push(_ element: Element)
    mutating func pop() -> Element?
    mutating func peek() -> Element?
}

class Node<T> {
    let value: T
    var next: Node<T>?
    
    init(_ value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }
}

// Implements LIFO - last in/first out
// Array implementation
struct Stack<Element> : Stackable {
    private var top: Node<Element>?
    
    mutating func push(_ element: Element) {
        let newNode = Node<Element>(element)
        newNode.next = top
        self.top = newNode
    }
    
    mutating func pop() -> Element? {
        let current = top
        top = top?.next
        return current?.value
    }
    
    func peek() -> Element? {
        return top?.value
    }
    
    var count: Int {
        var count = 0
        var head = top
        while head != nil {
            count += 1
            head = head?.next
        }
        return count
    }
}
