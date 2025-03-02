// Implements FIFO - first in/first out
// Array implementation
struct Queque<T> {
    private var items: [T] = []
    
    mutating func enqueue(_ element: T) {
        items.append(element)
    }
    
    mutating func dequeue() -> T? {
        guard !items.isEmpty else {
            return nil
        }
        
        return items.removeFirst()
    }
    
    func peek() -> T? {
        return items.first
    }
}
