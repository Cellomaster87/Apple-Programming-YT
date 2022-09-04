//
//  AppDelegate.swift
//  Cocoa Pr L70 NSCollectionView Diffable Data Source
//
//  Created by Michele Galvagno on 04/09/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    private let systemIconWindowController = SystemIconWindowController()

    @IBOutlet var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        systemIconWindowController.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/*!
 Diffable Data Sources: how you can diff between ≠ sets of arrays
 An array has uniquely identifiable elements
 
 1. Create the SystemIcons.swift file with the SystemIcon struct & the SystemIcons class
 2. Create the SystemIconCollectionViewItem.swift file with a dedicated NIB; modify the NIB to show an Image View and a Label.
 3. Create the SystemIconWindowController.swift file with accompanying NIB. The tutorial didn't explain how to build this NIB.
    a. create outlets for the search field and the collection view to the swift file
    b. create the private enum Section with two cases, custom & system
    c. create the dataSource property of the diffable data source
    d. generate the lazy property systemIcons
    e. create the convenience initialiser
    f. in windowDidLoad(), call the register(_:forItemWithIdentifier:) method on the collectionView.
    g. create the createLayout() function and call it in windowDidLoad
    h. create the setupDataSource() function and call it in windowDidLoad
    i. create the filter(_:with:) and icons(for:) methods, then the performQuery(_:) method, and call it in windowDidLoad
    j. from IB, connect the + & - buttons to code as IBActions, then implement them.
    k. create the extension to SystemIconWindowController
 4. in IB: connect all the necessary outlets (there are many of them, check them one by one)
 
 */

