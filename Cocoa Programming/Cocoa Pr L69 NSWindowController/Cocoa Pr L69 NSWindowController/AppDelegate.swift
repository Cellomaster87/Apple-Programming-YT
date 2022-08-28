//
//  AppDelegate.swift
//  Cocoa Pr L69 NSWindowController
//
//  Created by Michele Galvagno on 28/08/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    
    lazy var mainWindowController = MainWindowController()
    lazy var codeWindowController = CodeWindowController()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        print(mainWindowController)
        print(codeWindowController)
        mainWindowController.showWindow(nil)
        codeWindowController.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
}

/*!
 1. MainMenu.xib
    a. delete the window (which should be the view of the app)
 2. AppDelegate.swift
    a. delete the outlet connected to that window
 3. Create a new MainWindowController:NSWindowController Cocoa class with a NIB
 4. AppDelegate.swift
    a. add a lazy property called mainWindowController instantiating a MainWindowController
    b. in applicationDidFinishLaunching(_:) show its window with a nil sender
 5. MainWindowController.swift
    a. create a convenience initialiser to specify which nib you want this to run with
    b. override the windowNibName internally after commenting out step a)
    c. comment out b) and abilitate a)
    d. in windowDidLoad() set the contentViewController to be equal to the just created ViewController.swift class (which has a corresponding NIB file with a label in the centre saying "I am a fancy ViewController"
 6. Create a Window:NSWindow swift file with an override init about its content rect
 7. Create a new CodeWindowController: NSWindowController
    a. override loadWindow
    b. create the convenience init where you pass it a "garbage" nib name to allow loading the window.
    c. in windowDidLoad set the contentViewController to an instance of ViewController()
 8. in AppDelegate
    a. create a new lazy var for the CodeWindowController class
    b. show its window in applicationDidFinishLaunching
 */

