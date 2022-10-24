//
//  AccessoryViewController.swift
//  Cocoa Pr L85 OpenSave Panel AccessoryView
//
//  Created by Michele Galvagno on 15/10/22.
//

import Cocoa

class AccessoryViewController: NSViewController {
    static func viewForPanel(gitEnabled: Bool, callback: @escaping (Bool) -> Void) -> NSView {
        let accessoryVC = AccessoryViewController()
        let view = accessoryVC.view as! AccessoryView
        view.setup(gitEnabled: gitEnabled)
        view.callback = callback
        
        return view
    }
    
}

class AccessoryView: NSView {
    var callback: (Bool) -> Void = { _ in }
    
    @IBOutlet weak var gitButton: NSButton!
    
    func setup(gitEnabled: Bool) {
        gitButton.state = gitEnabled ? .on : .off
    }
    
    @IBAction func gitButtonPressed(_ sender: NSButton) {
        let gitEnabled = sender.state == .on
        callback(gitEnabled)
    }
}
