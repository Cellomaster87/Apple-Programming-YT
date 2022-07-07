//
//  AppDelegate.swift
//  Cocoa Pr L67 Swift
//
//  Created by Michele Galvagno on 07/07/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    let initialVC = InitialViewController()


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        window.contentViewController = initialVC
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/*!
 SETUP
 1. Create a new NSViewController subclass called InitialViewController; in viewDidLoad set the view's layer's background color to red
 2. Create a new NSViewController subclass, ModalViewController; set the bgcolor to yellow & the corner radius to 5
 For both don't forget to create a XIB
 3. InitialViewController.xib
    a. add a button "Present Modal View Controller".
    b. Add constraints for top space and center horizontally
    c. back the view with a core graphics layer from the effects inspector
    d. via Assistant Editor, create an action to presentModalVC
 4. ModalViewController.xib
    a. repeat process for a "dismissVC" button and action
 5. InitialViewController, implement the beginning of the action; in ModalViewController, in the action, dismiss the VC
 6. AppDelegate, in applicationDidFinishLaunching, set the window's contentVC to an instance of InitialVC.
 
 APP
 1. create a ModalAnimator:NSObject class, add conformance to NSViewControllerPresentationAnimator, add protocol stubs
 2. inside it, create a BackgroundView:NSView subclass to create a background fading when we present the modalVC
 3. create a private property to instantiate the BackgroundView as a zero width frame
 4. implement animatePresentation(of:from:); create a private var NSLayoutConstraint!
 5. implement animateDismissal(of:from:)
 
 */

