//
//  AppDelegate.swift
//  Cocoa Pr L79 Key View Loop
//
//  Created by Michele Galvagno on 28/09/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    @IBOutlet weak var stackView: NSStackView!
    lazy var windowController = WindowController()
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        /// Sets the property already checked in IB
//        window.autorecalculatesKeyViewLoop = true
        windowController.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


    @IBAction func addField(_ sender: NSButton) {
        stackView.addArrangedSubview(NSButton(title: "Added!", target: nil, action: nil))
    }
}

/**
 Order in which your app manages the key focus.
 1. MainMenu.xib:
    a. add three columns of 2 text fields and a button.
    b. Embed the first column in a Stack View
    c. build and run to check if it works as intended
    d. connect the stack view as an outlet to AppDelegate
    e. add an action addField(_:) from the Button to the AppDelegate and set it to add a new button
    f. select the container window and, in the Attributes Inspector, check "Recalculates View Loop"
    g. always with the window selected, go to the Connections Inspector and set the initial responder to the text field in the top left.
    h. with the top text field selected, set its next key view outlet to the top text field in the second column; repeat the same process for the destination text field towards the source one (to make this work, uncheck the window's Recalculates View Loop)
 
 2. How to do this with a Window Controller and a View Controller?
    a. create a ViewController: NSViewController and set up its NIB file. Set up the nextKeyView so that it cycles between all fields and buttons.
        1. create an optional NSView property 'initialFirstResponder' as an outlet and connect it to the first text field
        2. create an optional NSWindow 'initialWindow'
        3. in viewDidLoad, check that the initialWindow exists and then set its initialFirstResponder to the property in step 2.a.1.
        4. override viewWillAppear(), setting its view's window's initialFirstResponder to the property in step 2.a.1.
    b. create a WindowController: NSWindowController; there's nothing in the NIB.
        1. in viewDidLoad: set up an instance of ViewController(), set its initial window to the window property and set the contentViewController property to the view controller (vc) property
        2. override the showWindod method, setting the contentViewController to an instance of ViewController()
        3. create a convenience initialiser for the windownibname
    c. in AppDelegate:
        1. create a lazily initialised instance of WindowController
        2. in applicationDidFinishLaunching(_:) call the showWindow method on the WC
 */

