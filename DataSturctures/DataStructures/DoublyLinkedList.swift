
class DoublyListNode<T> {
    var value: T
    var next: DoublyListNode?
    var prev: DoublyListNode?
    
    init(_ value: T, next: DoublyListNode? = nil, prev: DoublyListNode? = nil) {
        self.value = value
        self.next = next
        self.prev = prev
    }
}

class DoublyLinkedList<T> {
    var head: DoublyListNode<T>?
    var prev: DoublyListNode<T>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    init(head: DoublyListNode<T>? = nil, prev: DoublyListNode<T>? = nil) {
        self.head = head
        self.prev = prev
    }
    
    var length: Int {
        var currentNode: DoublyListNode<T>? = head
        var count = 0
        
        while let node = currentNode {
            count += 1
            currentNode = node.next
        }
        
        return count
    }
    
    func node(atIndex: Int) -> DoublyListNode<T>? {
        guard !isEmpty else {
            return nil
        }
        
        var currIndex = 0
        var currNode = head
        
        while currIndex < atIndex {
            currIndex += 1
            currNode = currNode?.next
        }
        
        return currNode
    }
    
    func append(_ value: T) {
        let newNode = DoublyListNode<T>(value)
        if isEmpty {
            head = newNode
            prev = newNode
        } else {
            prev?.next = newNode
            newNode.prev = prev
            prev = newNode
        }
    }
}
