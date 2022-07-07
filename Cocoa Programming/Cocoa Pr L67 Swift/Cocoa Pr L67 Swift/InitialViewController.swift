//
//  InitialViewController.swift
//  Cocoa Pr L67 Swift
//
//  Created by Michele Galvagno on 07/07/22.
//

import Cocoa

class InitialViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer?.backgroundColor = NSColor.systemRed.cgColor
    }
    
    @IBAction func presentModalVC(_ sender: NSButton) {
        let modalVC = ModalViewController()
        present(modalVC, animator: ModalAnimator())
    }
    
}
