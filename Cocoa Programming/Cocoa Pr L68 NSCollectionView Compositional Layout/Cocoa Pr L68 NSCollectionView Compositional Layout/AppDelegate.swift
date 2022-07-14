//
//  AppDelegate.swift
//  Cocoa Pr L68 NSCollectionView Compositional Layout
//
//  Created by Michele Galvagno on 09/07/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.contentViewController = CollectionViewController()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/*!
 1. Create a CollectionViewController:NSViewController with XIB
 2. in the created XIB, add a collection view and pin it to all sides. W/Assistant Editor create an outlet for it. Connect the File's Owner to the outlet and the Collection View to the File's Owner as Data Source.
 3. create a new CollectionViewItem:NSCollectionViewItem with a XIB;
    a. in the Swift file create the reuseIdentifier property;
    b. in the XIB add a box, make it red w/corner radius 10, add a label and center it.
    c. Connect the File's Owner Text Field outlet to the Label
 4. in AppDelegate > applicationDidFinishLaunching, set the window's content view controller to be an instance of our CollectionViewController
 5. in CollectionViewController.swift
    a. create the private function listLayout()
    b. in viewDidLoad, assign it to the collectionView's collectionViewLayout
    c. create the private function gridLayout() and assign it instead
    d. create the private function varyingSectionsLayout() and assign it instead
    e. create the private function bidirectionalLayout() and assign it instead
 
 */

