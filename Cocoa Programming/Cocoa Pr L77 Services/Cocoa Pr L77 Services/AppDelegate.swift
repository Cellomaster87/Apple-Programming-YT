//
//  AppDelegate.swift
//  Cocoa Pr L77 Services
//
//  Created by Michele Galvagno on 25/09/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    class var shared: AppDelegate {
        return NSApp.delegate as! AppDelegate
    }

    @IBOutlet var window: NSWindow!

    @IBOutlet weak var wordCountLabel: NSTextField!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSApp.servicesProvider = ServiceProvider()
    }

    func setWordCount(_ count: Int) {
        wordCountLabel.integerValue = count
    }


}

/**
 HOW TO CREATE A SERVICE FROM YOUR APP
 1. Create the new ServiceProvider app and fill in is three methods
 2. In AppDelegate:
    a. applicationDidFinishLaunching(_:), set the app's service provider to an instance of the just created class
    b. create a shared instance of AppDelegate
 3. In MainMenu.xib
    a. add a Vertical Stack View, set it to CenterX alignment
    b. add two labels, Word Count and 0, one with System 30 and one with System 40 as font size, to the Stack View.
    c. set the stack view to be centred horizontally and vertically in the container
    d. create an outlet from the 0 label to the AppDelegate file
 4. In AppDelegate:
    a. create the setWordCount(_:) method
 5. Open Terminal and run /System/Library/CoreServices/pbs -update and then -dump
 
 
 */

