//
//  AppDelegate.swift
//  Cocoa Pr L78 NSTokenField
//
//  Created by Michele Galvagno on 26/09/22.
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
 1. Create a new Swift file "MailToken" and create the struct inside of it
 2. Create a new ViewController: NSViewController Cocoa class with XIB. In the XIB create a "To:" label, a Token Field, and a horizontal line as separator
 3. in AppDelegate, applicationDidFinishLaunching(_:), set the window's contentViewController to an instance of the ViewController class, then make the window key and order front with no sender.
 4. in ViewController.swift
    a. connect the tokenField outlet
    b. create the suggestions array
    c. add conformance to NSTokenFieldDelegate in an extension and implement the two methods there
    d. in viewDidLoad(), set the tokenField's delegate to self, its completionDelay to 0.25, and its tokenStyle to .squared
    e. create the match(suggestion:) and matchStrings(substring:) methods.
    f. Now we need to implement how the string will be shown in the field. Implement the two extra methods
    g. now add the two methods to manage the menu for editing.
 */
