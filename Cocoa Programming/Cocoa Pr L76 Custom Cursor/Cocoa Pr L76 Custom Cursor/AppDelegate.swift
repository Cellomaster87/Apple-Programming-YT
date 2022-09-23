//
//  AppDelegate.swift
//  Cocoa Pr L76 Custom Cursor
//
//  Created by Michele Galvagno on 23/09/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    
    var counter = 0

    @IBAction func changeCursor(_ sender: NSButton) {
        switch counter {
        case 0:
            NSCursor.openHand.push()
        case 1:
            NSCursor.closedHand.push()
        default:
            NSCursor.pop()
        }
        counter = (counter + 1) % 4 // cycles from 0 to 3
    }
    
    @IBAction func hideCursor(_ sender: NSButton) {
        NSCursor.hide()
        Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
            NSCursor.unhide()
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
 1. MainMenu.xib
    a. add a custom view and two buttons (Pop/Push - Hide)
    b. constrain the items in the interface
 2. Create a new Cocoa Class CursorView: NSView
    a. declare an array of NSPoint
    b. override the draw function
    c. override the mouseDown function
 3. Assets.xcassets: add the three cursor image
 4. in CursorView implement the resetCursorRects() method
 5. set the custom view's identity to the CursorView class
 6. AppDelegate
    a. create a changeCursor and hideCursor actions from the two buttons in the interface
    b. implement the hideCursor action
    c. implement the changeCursor action
 
 */

