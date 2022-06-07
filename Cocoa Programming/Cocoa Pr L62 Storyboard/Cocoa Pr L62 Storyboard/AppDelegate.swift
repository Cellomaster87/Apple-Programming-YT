//
//  AppDelegate.swift
//  Cocoa Pr L62 Storyboard
//
//  Created by Michele Galvagno on 07/06/22.
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
 Lesson 62
 1. Main.storyboard > add a Text Field and add constraints to it so that it is pinned to the top, has fixed width & height, and is horizontally aligned to the centre.
 2. add a Tab View Controller > remove the connection between the window controller and the original VC > connect WC and TVC, then connect TVC's tab item to original VC > rename the two VC "First and Second"
 3. on the "First" VC, add three buttons "Modal" "Popover" "Sheet"
 4. create three new VC to represent the way things can be shown, then connect the buttons with a segue
 5. add a button to the Sheet VC, drag to the VC icon (blue) above, and call dismissController:
 6. create a new Cocoa class SecondViewController: NSViewController > assign it to the popover VC
 7. from First VC add outlet for the NSTextField; in Popover VC add a label, then create outlet in SecondViewController class > name the popover segue as "DetailSegue"
 8. in ViewController.swift, implement the prepare(for:sender:)
 9. in SecondViewController.swift, in viewDidLoad(), set the nameLabel.stringValue to be the representedObject downcast as String
 */

