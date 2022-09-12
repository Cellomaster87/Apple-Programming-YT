//
//  AppDelegate.swift
//  Cocoa Pr L71 Custom NSView NSBox
//
//  Created by Michele Galvagno on 12/09/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    @IBOutlet weak var box: NSBox!
    @IBOutlet weak var view: View!
    
    @IBAction func animate(_sender: Any) {
        NSAnimationContext.runAnimationGroup { context in
            context.allowsImplicitAnimation = true
            context.duration = 0.5
            
            let value = CGFloat(arc4random_uniform(50))
            box.animator().borderWidth = value
            view.animator().borderWidth = value
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

/*
 HOW TO:
 1. MainMenu.xib
    a. drag out a Custom Box, and give it the size of 175 x 175
    b. drag out a Custom View, make it the same size of the box
    c. add constraints for left, right, aspect ratio, equal widths, vertically centred
    d. play with the options in the attributes inspector to change the stoke and fill colors.
 2. Create a new View: NSView class, delete the drawing code.
    a. override the wantsUpdateLayer property, returning true
    b. override the function updateLayer(), setting options within it
    c. create the backgroundColor property and mark it as @IBInspectable
    d. mark the class as @IBDesignable
    e. repeat the process for cornerRadius, borderColor, borderWidth
 3. Add a button to the canvas, call it "Animate" and pin it to the bottom and center it into the container.
 4. AppDelegate.swift
    a. create outlets for the box and the view
    b. create an action for the button and, inside it, create the animation code
    c. (in View.swift, add the dynamic keyword to the borderWidth property); then override the animation(forKey:) method
 
 
 */

