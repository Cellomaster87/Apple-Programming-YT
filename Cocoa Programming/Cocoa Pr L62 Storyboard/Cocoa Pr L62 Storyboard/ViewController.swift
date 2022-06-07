//
//  ViewController.swift
//  Cocoa Pr L62 Storyboard
//
//  Created by Michele Galvagno on 07/06/22.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var nameField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailSegue" {
            (segue.destinationController as! NSViewController).representedObject = nameField.stringValue
        }
    }


}

