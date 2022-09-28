//
//  WindowController.swift
//  Cocoa Pr L79 Key View Loop
//
//  Created by Michele Galvagno on 28/09/22.
//

import Cocoa

class WindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        let vc = ViewController()
        vc.initialWindow = window
        contentViewController = vc
    }
    
    override func showWindow(_ sender: Any?) {
        contentViewController = ViewController()
        super.showWindow(sender)
    }
    
    convenience init() {
        self.init(windowNibName: "WindowController")
    }
    
}
