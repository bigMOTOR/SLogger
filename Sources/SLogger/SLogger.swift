struct SLogger {
  static func debug(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    print("\(file), \(line)\n🛠 Debug: \(message())")
  }
  
  static func info(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    print("\(file), \(line)\n✅ Info: \(message())")
  }
  
  static func warning(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    print("\(file), \(line)\n⚠️ Warning: \(message())")
  }
  
  static func error(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    let messageTxt = "Error: \(message())"
    print("\(file), \(line)\n⛔️ \(messageTxt)")
  }
  
  static func fatal(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    print("\(file), \(line)\n❌ Fatal: \(message())")
    assertionFailure()
  }
}
