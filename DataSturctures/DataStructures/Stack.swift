protocol Stackable {
    associatedtype Element
    mutating func push(_ element: Element)
    mutating func pop() -> Element?
    mutating func peek() -> Element?
}

// Implements LIFO - last in/first out
// Array implementation
struct Stack<Element> : Stackable {
    private var storage = [Element]()
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    mutating func pop() -> Element? {
        return storage.removeLast()
    }
    
    func peek() -> Element? {
        return storage.last
    }
    
    var count: Int {
        return storage.count
    }
}
