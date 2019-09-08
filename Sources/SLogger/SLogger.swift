public struct SLogger {
  public static func debug(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    print("\(file), \(line)\n🛠 Debug: \(message())")
  }
  
  public static func info(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    print("\(file), \(line)\n✅ Info: \(message())")
  }
  
  public static func warning(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    print("\(file), \(line)\n⚠️ Warning: \(message())")
  }
  
  public static func error(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    let messageTxt = "Error: \(message())"
    print("\(file), \(line)\n⛔️ \(messageTxt)")
  }
  
  public static func fatal(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    print("\(file), \(line)\n❌ Fatal: \(message())")
    assertionFailure()
  }
}
