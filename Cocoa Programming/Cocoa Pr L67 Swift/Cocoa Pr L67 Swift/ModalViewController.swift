//
//  ModalViewController.swift
//  Cocoa Pr L67 Swift
//
//  Created by Michele Galvagno on 07/07/22.
//

import Cocoa

class ModalViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer?.backgroundColor = NSColor.systemYellow.cgColor
        view.layer?.cornerRadius = 5
    }
    
    @IBAction func dismissVC(_ sender: NSButton) {
        dismiss(self)
    }
}
