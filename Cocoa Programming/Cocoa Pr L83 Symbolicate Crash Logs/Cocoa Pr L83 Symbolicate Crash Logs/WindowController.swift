//
//  WindowController.swift
//  Cocoa Pr L83 Symbolicate Crash Logs
//
//  Created by Michele Galvagno on 05/10/22.
//

import Cocoa

class WindowController: NSWindowController {
    @IBOutlet weak var label: NSTextField!
    
    var counter = 0
    var strings = ["This", "Is", "A", "Crash"]
    
    convenience init() {
        self.init(windowNibName: "WindowController")
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func buttonPressed(_ sender: NSButton) {
        label.stringValue = strings[counter]
        counter += 1
    }
}
