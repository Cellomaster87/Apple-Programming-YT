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
 6. SuggestionsViewController.swift:
    a. complete the two extensions
    b. complete the `viewDidLoad` function
    c. create the `orderOut` and `showSuggestions(_:for:)` methods
 7. MainWindowController.swift:
    a. create the extension to add conformance to `NSControlTextEditingDelegate
    b. create the a lazy var for an instance of `SuggestionsWindowController()`
    c. in the extension add the `controlTextDidChange(_:)` and `control(_:textView:doCommandBy:)` methods
 8. back in SuggestionsViewController.swift, create the two methods `moveUp()` and `moveDown()`.
 9. back in MainWindowController.swift
    a. add the call to these two methods in the `control(_:textView:doCommandBy:)` method
    b. add another condition for when you want to press enter
 10. in SuggestionsViewController, create the `currentSuggestion` property
 11. in MainWindowController, complete the `control(_:textView:doCommandBy:)` method
 
 
 
 
 
 */

