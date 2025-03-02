import Testing
@testable import DataSturctures

struct QuequeTests {

    @Test func testQueque_dequeque() async throws {
        var stack = Queque<Int>()
        stack.enqueue(1)
        stack.enqueue(2)
        stack.enqueue(3)
        
        let element = stack.dequeue()
        #expect(element == 1)
    }
}
