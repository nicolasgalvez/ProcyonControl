//
//  main.swift
//  ProcyonControl
//
//  Created by Nick Galvez on 1/17/24.
//

import Foundation
import AppKit

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate

_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)

