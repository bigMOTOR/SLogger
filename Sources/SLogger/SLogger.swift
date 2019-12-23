public struct SLogger {
  /// LogLevel for SLogger. Default LogLevel = info. Possible values: debug, info, warning, error, fatal, off. debug
  public static var logLevel: LogLevel = .info
  
  public static func debug(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    let messageTxt = "\(message())\n\(file), \(line)\n"
    _log(.debug, message: messageTxt)
  }
  
  public static func info(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    let messageTxt = "\(message())\n\(file), \(line)\n"
    _log(.info, message: messageTxt)
  }
  
  public static func warning(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    let messageTxt = "\(message())\n\(file), \(line)\n"
    _log(.warning, message: messageTxt)
  }
  
  public static func error(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    let messageTxt = "\(message())\n\(file), \(line)\n"
    _log(.error, message: messageTxt)
  }
  
  public static func fatal(_ message: @autoclosure () -> Any, file: StaticString = #file, line: UInt = #line) {
    let messageTxt = "\(message())\n\(file), \(line)\n"
    _log(.fatal, message: messageTxt)
    assertionFailure()
  }
  
  private static func _log(_ level: LogLevel, message: String) {
    guard level.rawValue >= SLogger.logLevel.rawValue  else { return }
    print("\(level.unicodeSymbol) \(level.name): \(message)")
  }
  
}

private extension LogLevel {
  var unicodeSymbol: String {
    switch self {
    case .debug:
      return "🛠"
    case .info:
      return "✅"
    case .warning:
      return "⚠️"
    case .error:
      return "⛔️"
    case .fatal:
      return "❌"
    case .off:
      return ""
    }
  }
  
  var name: String {
    switch self {
      case .debug:
        return "Debug"
      case .info:
        return "Info"
      case .warning:
        return "Warning"
      case .error:
        return "Error"
      case .fatal:
        return "Fatal"
      case .off:
        return ""
      }
    }
}
