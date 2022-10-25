//
//  AppDelegate.swift
//  Cocoa Pr L88 TouchID Authentication
//
//  Created by Michele Galvagno on 25/10/22.
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
 1. Create a new ViewController:NSViewController class with XIB
    a. fill in the two outlets, the isLoggedIn computed property, and the viewDidLoad method
    b. import the LocalAuthentication framework
    c. create an LAContext() property
    d. create the logIn action
 
 */

