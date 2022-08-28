//
//  MainWindowController.swift
//  Cocoa Pr L69 NSWindowController
//
//  Created by Michele Galvagno on 28/08/22.
//

import Cocoa

class MainWindowController: NSWindowController {
    convenience init() {
        self.init(windowNibName: "MainWindowController")
    }
//    override var windowNibName: NSNib.Name? {
//        "MainWindowController"
//    }

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        contentViewController = ViewController()
    }
    
}
