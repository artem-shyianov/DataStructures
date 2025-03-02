import Testing
@testable import DataSturctures

struct DoublyLinkedListTests {
    
    @Test func doublyLinkedList() async throws {
        let linkedList = DoublyLinkedList<Int>()
        linkedList.append(1)
        linkedList.append(2)
        linkedList.append(3)
        
        #expect(linkedList.length == 3)
        let node = linkedList.node(atIndex: 0)
        
        #expect(node?.prev == nil)
        #expect(node?.value == 1)
        #expect(node?.next?.value == 2)
    }
}
