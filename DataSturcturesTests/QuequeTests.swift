import Testing
@testable import DataSturctures

struct QuequeTests {

    @Test func testQueque_dequeque() async throws {
        var stack = Queque<Int>()
        stack.enqueue(1)
        stack.enqueue(2)
        stack.enqueue(3)
        
        var element = stack.dequeue()
        #expect(element == 1)
        
        element = stack.dequeue()
        #expect(element == 2)
        
        element = stack.dequeue()
        #expect(element == 3)
    }
    
    @Test func testPeek() async throws {
        var stack = Queque<Int>()
        stack.enqueue(1)
        stack.enqueue(2)
        stack.enqueue(3)
        
        let element = stack.peek()
        #expect(element == 1)
    }
}
