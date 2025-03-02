class ListNode<T> {
    let value: T
    var next: ListNode?
    
    init(value: T, next: ListNode? = nil) {
        self.value = value
        self.next = next
    }
}

class LinkedList<T> {
    var head: ListNode<T>?
    var tail: ListNode<T>?
    
    var isEmpty: Bool {
        head == nil
    }
    
    var last: ListNode<T>? {
        return self.tail
    }
    
    func append(_ value: T) {
        let node = ListNode(value: value)
        
        guard self.head != nil else {
            self.head = node
            self.tail = node
            return
        }
        
        
        self.tail?.next = node
        self.tail = node
    }
    
    func length() -> Int {
        guard !self.isEmpty else {
            return 0
        }
        
        var count = 0
        var currNode: ListNode? = self.head
        
        while currNode != nil {
            currNode = currNode?.next
            count += 1
        }
        
        return count
    }
    
    func reverse(_ head: ListNode<T>?) -> ListNode<T>? {
        var prevNode: ListNode<T>? = nil
        var headNode = head
       
        while(headNode != nil) {
            let nextHead = headNode?.next
            headNode?.next = prevNode
            prevNode = headNode
            headNode = nextHead
        }
    
        return prevNode
    }
}
