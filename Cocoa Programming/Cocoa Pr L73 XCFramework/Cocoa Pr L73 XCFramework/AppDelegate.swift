//
//  AppDelegate.swift
//  Cocoa Pr L73 XCFramework
//
//  Created by Michele Galvagno on 19/09/22.
//

import Cocoa
import TrollKit

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    
    lazy var trollWindowController = TrollWindowController()


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        trollWindowController.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/*
 1. File > New > Project > Framework
 2. Project > Build settings > Build Libraries for Distribution > YES | Skip Install > NO
 3. Product > Archive > Reveal in Finder > go to the folder called [frameworkName.xcframework]
 4. Terminal > cd to the target project folder > xcodebuild -create-xcframework -framework [pathToXCFramework] -output [frameworkName.xcframework]
 5. drag the [frameworkName.xcframework] folder to the Project > General area for the project, then import it and use it.
 */

