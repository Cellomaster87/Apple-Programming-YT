//
//  Window.swift
//  Cocoa Pr L69 NSWindowController
//
//  Created by Michele Galvagno on 28/08/22.
//

import Cocoa

class Window: NSWindow {
    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: [.fullSizeContentView], backing: .buffered, defer: true)
        isMovableByWindowBackground = true
        backgroundColor = NSColor.systemGray
    }
}
