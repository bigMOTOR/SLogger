import XCTest
@testable import SLogger

final class SLoggerTests: XCTestCase {
  func testExample() {
    SLogger.debug("Hello World!")
    SLogger.info("Hello World!")
    SLogger.warning("Hello World!")
    SLogger.error("Hello World!")
//    SLogger.fatal("Hello World!")
  }
}
