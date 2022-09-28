//
//  ViewController.swift
//  Cocoa Pr L79 Key View Loop
//
//  Created by Michele Galvagno on 28/09/22.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet private weak var initialFirstResponder: NSView?
    weak var initialWindow: NSWindow?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let window = initialWindow else { return }
        window.initialFirstResponder = initialFirstResponder
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        view.window?.initialFirstResponder = initialFirstResponder
    }
    
}
