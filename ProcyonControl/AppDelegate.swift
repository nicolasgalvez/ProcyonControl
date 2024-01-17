//
//  AppDelegate.swift
//  ProcyonControl
//
//  Created by Nick Galvez on 1/17/24.
//

import Cocoa
import SwiftUI

//@main
class AppDelegate: NSObject, NSApplicationDelegate {

    private var window: NSWindow!
    private var statusItem: NSStatusItem!
    private var applicationName: String = "Procyon Tools"

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        print("loaded")
         statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
         if let button = statusItem.button {
             button.image = NSImage(systemSymbolName: "w.circle", accessibilityDescription: "1")
         }

         setupMenus()
     }

     func setupMenus() {
         // 1
         let menu = NSMenu()

         // 2
         let one = NSMenuItem(title: "One", action: #selector(didTapOne) , keyEquivalent: "1")
         menu.addItem(one)

         let two = NSMenuItem(title: "Two", action: #selector(didTapTwo) , keyEquivalent: "2")
         menu.addItem(two)

         let three = NSMenuItem(title: "About", action: #selector(didTapThree) , keyEquivalent: "3")
         menu.addItem(three)

         menu.addItem(NSMenuItem.separator())

         menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))

         // 3
         statusItem.menu = menu
     }
    
    
    private func changeStatusBarButton(number: Int) {
        if let button = statusItem.button {
            button.image = NSImage(systemSymbolName: "\(number).circle", accessibilityDescription: number.description)
        }
    }
    private func showWindow() {
        NSApp.activate(ignoringOtherApps: true)
                        window = NSWindow(
                            contentRect: NSRect(x: 0, y: 0, width: 480, height: 270),
                            styleMask: [.miniaturizable, .closable, .resizable, .titled],
                            backing: .buffered, defer: false)
                        window.center()
                        window.title = "Procyon Control"
                        window.contentView = NSHostingView(rootView: Help())
                        window.makeKey()
                        window.orderFrontRegardless()
                        window.makeKeyAndOrderFront(nil)
    }

    @objc func didTapOne() {
        changeStatusBarButton(number: 1)
    }

    @objc func didTapTwo() {
        changeStatusBarButton(number: 2)
    }

    @objc func didTapThree() {
        changeStatusBarButton(number: 3)
        showWindow()
    }
}
