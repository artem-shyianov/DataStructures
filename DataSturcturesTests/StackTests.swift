import Testing
@testable import DataSturctures

struct StackTests {

    @Test func testCount() async throws {
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        
        #expect(stack.count == 3)
    }

    @Test func testPop() async throws {
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        
        let element = stack.pop()
        #expect(element == 3)
    }
}
