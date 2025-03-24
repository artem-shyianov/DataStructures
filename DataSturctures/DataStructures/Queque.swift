// Implements FIFO - first in/first out
// Array implementation
struct Queque<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    func isEmpty() -> Bool {
        return head == nil
    }
    
    mutating func enqueue(_ element: T) {
        if isEmpty() {
            head = Node<T>(element)
            tail = head
            return
        }
        
        let newNode = Node<T>(element)
        tail?.next = newNode
        tail = tail?.next
    }
    
    mutating func dequeue() -> T? {
        let current = head
        head = head?.next
        
        return current?.value
    }
    
    func peek() -> T? {
        return head?.value
    }
}
