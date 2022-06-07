//
//  SecondViewController.swift
//  Cocoa Pr L62 Storyboard
//
//  Created by Michele Galvagno on 07/06/22.
//

import Cocoa

class SecondViewController: NSViewController {
    @IBOutlet weak var nameLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.stringValue = representedObject as! String
    }
    
}
