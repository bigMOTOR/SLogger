//
//  LogLevel.swift
//  
//
//  Created by Nikolay Fiantsev on 23.12.2019.
//

import Foundation

public enum LogLevel: Int {
  case debug = 0
  case info
  case warning
  case error
  case fatal
  case off = 99
}
