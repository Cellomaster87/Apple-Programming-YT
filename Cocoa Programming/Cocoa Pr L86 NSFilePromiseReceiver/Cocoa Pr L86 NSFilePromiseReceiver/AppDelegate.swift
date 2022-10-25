//
//  AppDelegate.swift
//  Cocoa Pr L86 NSFilePromiseReceiver
//
//  Created by Michele Galvagno on 22/10/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        window.contentViewController = ViewController()
        window.makeKeyAndOrderFront(nil)
    }
}

/*
 1. create a ViewController:NSViewController class with XIB; add an Image View to the canvas.
 2. create ImageDropView: NSView class, and assign it to the top view in the ViewController XIB. Connect the image view as an outlet to the ImageDropView class.
 3. setup the ViewController class as in the source code.
    a. once at the beginning of the extension, go back to the ImageDropView Swift file and implement the required protocol.
    b. complete the ViewController extension.
 3. setup the ImageDropView swift file
 4. AppDelegate: setup the window's contentViewController to be an instance of ViewController
 
 LESSON 87
 1. in ImageDropView, add the rectForDrawingImage(with:)
 2. in ViewController, add the ImageError enumeration, and the writeBlackAndWhite(image:to:)
 3. in ImageDropView:
    a. add the mouseDown(with:) method
    b. add an extension that conforms to NSDraggingSource and fulfills the required method
    c. in the protocol at the top of the file, add the new pasteboardWriter(forImageDropView:) method
 4. in ViewController (who is our delegate):
    a. implement the pasteboardWriter(forImageDropView:) method
    b. extend ViewController to conform to NSFilePromiseProviderDelegate
 
 
 */

