//
//  AppDelegate.swift
//  Cocoa Pr L90 Custom Search Suggestion Window
//
//  Created by Michele Galvagno on 07/11/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    lazy var mainWindowController = MainWindowController()


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        mainWindowController.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/**
 1. Create a TableCellView: NSTableCellView class, plus manually create a XIB to connect to it. Set constraints for the Label cell inside of it.
 2. Create a new MainWindowController: NSWindowController.
    a. Setup the XIB with a SearchField and a big Label in the centre.
    b. Create outlets for them in the Swift file.
    c. Set the search field as the delegate of the file's owner.
    d. Complete the setup of the file with the `suggestions` array, the convenience initialiser (which looks awful), and the `suggestions(for:)` method.
 3. in AppDelegate create a MainWindowController instance as a lazily instanciated property, then show its window in `applicationDidFinishLaunching(_:)`
 4. complete the template for the TableCellView Swift File
 5. Create a new SuggestionsWindowController: NSWindowController with XIB. In IB, deselect Show Title Bar and Visible At Launch for the Window
 
 
 
 */

