//
//  CodeWindowController.swift
//  Cocoa Pr L69 NSWindowController
//
//  Created by Michele Galvagno on 28/08/22.
//

import Cocoa

class CodeWindowController: NSWindowController {
    convenience init() {
        self.init(windowNibName: "")
    }
    
    override func loadWindow() {
        self.window = Window(contentRect: NSMakeRect(100, 100, 400, 300), styleMask: [], backing: .buffered, defer: true)
    }

    override func windowDidLoad() {
        super.windowDidLoad()
        
        contentViewController = ViewController()
    }
    
}
