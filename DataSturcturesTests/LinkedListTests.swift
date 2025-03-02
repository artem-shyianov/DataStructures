import Testing
@testable import DataSturctures

struct LinkedListTests {

    @Test func linkedList() async throws {
        let linkedList = LinkedList<Int>()
        linkedList.append(1)
        linkedList.append(2)
        linkedList.append(3)
        
        #expect(linkedList.head?.value == 1)
        #expect(linkedList.tail?.value == 3)
        #expect(linkedList.length() == 3)
    }
    
    @Test func linkedList_reverse() async throws {
        let linkedList = LinkedList<Int>()
        linkedList.append(1)
        linkedList.append(2)
        linkedList.append(3)
        
        #expect(linkedList.head?.value == 1)
        
        let head = linkedList.reverse(linkedList.head)
        
        #expect(head?.value == 3)
    }
}
