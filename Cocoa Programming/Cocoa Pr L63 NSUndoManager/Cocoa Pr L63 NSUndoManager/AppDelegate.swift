//
//  AppDelegate.swift
//  Cocoa Pr L63 NSUndoManager
//
//  Created by Michele Galvagno on 09/06/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    


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
 1. Create an compile the two NSView subclasses DrawingView and CircleView
 2. in the IB, add a CustomView, assign it to the DrawingView class, then in the Effects Panel, check the "View" Core Animation Layer.
 3. in DrawingView,
    a. implement the addCircle(circle:) method and the removeCircle(cirlce:) one.
    b. in the else part, add the circle
    c. in the if part, remove the Circle
    d. add the undoManager code to both addCircle and removeCircle
 */

