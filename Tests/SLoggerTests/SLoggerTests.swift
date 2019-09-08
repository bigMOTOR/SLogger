import XCTest
@testable import SLogger

final class SLoggerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SLogger().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
