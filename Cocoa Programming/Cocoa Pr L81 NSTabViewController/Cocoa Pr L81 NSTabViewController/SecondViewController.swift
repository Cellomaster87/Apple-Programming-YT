//
//  SecondViewController.swift
//  Cocoa Pr L81 NSTabViewController
//
//  Created by Michele Galvagno on 03/10/22.
//

import Cocoa

class SecondViewController: NSViewController {

    override init(nibName nibNameOrNil: NSNib.Name?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        title = "Second"
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
