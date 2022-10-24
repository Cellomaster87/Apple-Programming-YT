//
//  AppDelegate.swift
//  Cocoa Pr L85 OpenSave Panel AccessoryView
//
//  Created by Michele Galvagno on 15/10/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    @IBAction func newProjectButtonPressed(_ sender: Any) {
        let savePanel = NSSavePanel()
        savePanel.accessoryView = AccessoryViewController.viewForPanel(gitEnabled: false) { gitEnabled in
            print("\(gitEnabled ? "Enabled" : "Disabled") git repo for project")
        }
        savePanel.beginSheetModal(for: window) { response in
            //
        }
    }
    
}

/**
 1. Project > Signing & Capabilities > App Sandbow > File Access > User Selected File > Read/Write
 2. Create a new Cocoa Class AccessoryViewController: NSViewController, with no code inside and whatever you want in the XIB
 3. In MainMenu, add a button in the middle, called "New Project", then create an action for it in the AppDelegate
 4. AppDelegate.swift: implement the button action up to the closure parameter beginning (third line)
 5. AccessoryViewController:
    a. create the viewForPanel(gitEnabled:callback:) function
    b. create the AccessoryView: NSView subclass
 
 */

