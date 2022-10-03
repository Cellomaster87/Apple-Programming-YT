//
//  WindowController.swift
//  Cocoa Pr L81 NSTabViewController
//
//  Created by Michele Galvagno on 03/10/22.
//

import Cocoa

class WindowController: NSWindowController {
    lazy var tabViewController: NSTabViewController = {
        let tabVC = TabViewController()
        let tabView1 = NSTabViewItem(viewController: FirstViewController())
        tabView1.label = "First Item"
        tabView1.image = NSImage(named: NSImage.cautionName)
        
        tabVC.addTabViewItem(tabView1)
        tabVC.addTabViewItem(NSTabViewItem(viewController: SecondViewController()))
        
        tabVC.tabStyle = .unspecified
        
        return tabVC
    }()
    
    convenience init() {
        self.init(windowNibName: "WindowController")
    }

    override func windowDidLoad() {
        super.windowDidLoad()
        
        contentViewController = tabViewController

    }
    
    @IBAction func firstPressed(_ sender: Any) {
        tabViewController.selectedTabViewItemIndex = 0
    }
    
    @IBAction func secondPressed(_ sender: Any) {
        tabViewController.selectedTabViewItemIndex = 1
    }
    
}
