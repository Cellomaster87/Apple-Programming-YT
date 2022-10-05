//
//  AppDelegate.swift
//  Cocoa Pr L83 Symbolicate Crash Logs
//
//  Created by Michele Galvagno on 05/10/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    lazy var windowController = WindowController()


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        windowController.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/**
 1. AppDelegate:
    a. remove the window and add a lazy war for a WindowController (whose class you have created before)
    b. in applicationDidFinishLaunching, set the windowController to show the window
 2. WindowController.xib: add a label, make it big, connect an outlet to the code; create a button, connect an action to the code
 3. WindowController.swift:
    a. create a counter = 0 property and a strings property as an array of strings containing four elements
    b. add the convenience initialiser
    c. add the body of the action function
 4. Terminal
    a. xcrun dwarfdump --uuid (App > Show in Finder > Show Package Contents > move the application in another folder) <dropTheApp>/Contents/MacOS/<appName> : this should provide the same Application binary ID.
    b. xcrun atos -o "<appPathAsBefore> -arch x86_64 (check the crash log for architecture) -l <addressForBinaryImagesSection> <addressOfTheCrashedThreads>
    c. the (.dSYM) file is the most important file
 5. automatic way:
    a. use the MacSymbolicator app
    b. drop the .crash or .dsym file
 
 
 */

