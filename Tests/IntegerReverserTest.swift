import XCTest
@testable import AL01

class IntegerReverserTest: XCTestCase {

    func testPositiveInteger() {
        let number = IntegerReverser()
        XCTAssertEqual(number.reverse(461), 164)
    }
    
    func testNegativeInteger() {
        let number = IntegerReverser()
        XCTAssertEqual(number.reverse(-461), -164)
    }
    
    func testIntegerEndingIn0() {
        let number = IntegerReverser()
        XCTAssertEqual(number.reverse(340), 43)
    }
}
