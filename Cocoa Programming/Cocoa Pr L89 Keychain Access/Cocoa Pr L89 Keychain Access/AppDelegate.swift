//
//  AppDelegate.swift
//  Cocoa Pr L89 Keychain Access
//
//  Created by Michele Galvagno on 01/11/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.contentViewController = ViewController()
        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/**
 1. Create a ViewController: NSViewController class with XIB; in the XIB, create a label to show status, a text field to enter the password, and two buttons: Story Entry and Read Entry
 2. Since we're going to use the ViewController for our interface, add the required code to `applicationDidFinishLaunching(_:)` in AppDelegate
 3. ViewController.swift:
    a. Create outlets for the two text fields and actions for the two buttons
    b. import the LocalAuthentication framework
    c. create the `updateStatus(_:)` method.
 4. create the KeychainHelper class, with the `static createEntry(key:data:)`, `static remove(key:)` and `load(key:context:)` methods
 5. in App > Signing & Capabilities, add Keychain Sharing
 6. ViewController.swift
    a. create a keychain key as a global string outside of the class
    b. complete the `storeEntry(_:)` and `readEntry(_:)` action methods
 Done!
 */
