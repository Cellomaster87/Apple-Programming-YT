//
//  AppDelegate.swift
//  Cocoa Pr L74 XPC Services
//
//  Created by Michele Galvagno on 20/09/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    @IBOutlet var outputLabel: NSTextField!
    @IBOutlet var inputField: NSTextField!
    
    @IBAction func uppercase(_ sender: Any) {
        // Uppercase out string via XPC
        UppercaseUtility.uppercase(inputField.stringValue) { [weak self] uppercased in
            DispatchQueue.main.async {
                self?.outputLabel.stringValue = uppercased
            }
        }
    }


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/**
 1. Create a label, a text field, a button, and connect them to AppDelegate
 2. Project > + button to add a Target > macOS > XPC Service
 3. Create the UppercaseUtility.swift file
 4. set up the function in AppDelegate
 
 */

