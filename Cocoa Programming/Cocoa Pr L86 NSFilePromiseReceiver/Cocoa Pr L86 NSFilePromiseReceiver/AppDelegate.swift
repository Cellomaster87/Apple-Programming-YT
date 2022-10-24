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
 
 */

