class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    var isEmpty: Bool {
        head == nil
    }
    
    var last: Node<T>? {
        return self.tail
    }
    
    func append(_ value: T) {
        let node = Node(value)
        
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
        var currNode: Node? = self.head
        
        while currNode != nil {
            currNode = currNode?.next
            count += 1
        }
        
        return count
    }
    
    func reverse(_ head: Node<T>?) -> Node<T>? {
        var prevNode: Node<T>? = nil
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
