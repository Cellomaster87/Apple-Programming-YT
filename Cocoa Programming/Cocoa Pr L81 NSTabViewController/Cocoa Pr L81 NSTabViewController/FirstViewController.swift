//
//  FirstViewController.swift
//  Cocoa Pr L81 NSTabViewController
//
//  Created by Michele Galvagno on 03/10/22.
//

import Cocoa

class FirstViewController: NSViewController {

    override init(nibName nibNameOrNil: NSNib.Name?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        title = "First"
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
