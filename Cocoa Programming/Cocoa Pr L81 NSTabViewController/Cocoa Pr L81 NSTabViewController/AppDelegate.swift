//
//  AppDelegate.swift
//  Cocoa Pr L81 NSTabViewController
//
//  Created by Michele Galvagno on 03/10/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    lazy var windowController = WindowController()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        windowController.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/**
 1. Create two NSViewController subclasses, FirstViewController and SecondViewController; setup their nib files; in their code, override the initialisers
 2. AppDelegate: remove the window outlet; go to MainMenu.xib and remove the window
 3. Create a WindowController: NSWindowController. In it:
    a. create the convenience initialiser
    b. create the lazy var tabViewController, passing it the two view controllers we just created
    c. in windowDidLoad, set the contentViewController to be the tabViewController
 4. AppDelegate: create a new lazy var for the WindowController then, in applicationDidFinishLaunching, make it show its window.
 5. if the tabStyle is unspecified, we can set it programmatically. In WindowController.xib, add a toolbar, remove the existing toolbar items, and add two custom ones, call them First and Second
 6. in WindowController.swift, create the two actions firstPressed(_:) and secondPressed(_:)
 7. in the xib, select each of the items and wire them up from the connection inspector to the first responder, from the action sender, looking for the two methods created in step 6.
 8. if you want, create an NSTabViewController subclass and, in WindowController, set an instance of it as the tabVC
 
 
 */

