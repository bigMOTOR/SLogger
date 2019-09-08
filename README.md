# SLogger

SLogger - is a very-very Simple console Logger in 20-ty lines of code which adds some fancy and noticeable icons, file name and line to your messages.
I use it personaly for my own needs, but welcome to join if you need something like that. 🙃

## Getting Started

Just write:
```swift
SLogger.debug("Hello World!")
SLogger.info("Hello World!")
SLogger.warning("Hello World!")
SLogger.error("Hello World!")
```

You'll get the console output:
```
.../SLoggerTests.swift, 6
🛠 Debug: Hello World!
.../SLoggerTests.swift, 7
✅ Info: Hello World!
.../SLoggerTests.swift, 8
⚠️ Warning: Hello World!
.../SLoggerTests.swift, 9
⛔️ Error: Hello World!
```

Also you are able to call:
```swift
SLogger.fatal("Hello World!")
```
It will lead to assertionFailure() with aproprite log.
