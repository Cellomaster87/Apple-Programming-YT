//
//  AppDelegate.swift
//  Cocoa Pr L65 ImportFramework
//
//  Created by Michele Galvagno on 15/06/22.
//

import Cocoa
import LoggingFramework

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSLog(string: "This is our NSLog")
        Logging.testClassMethod()
        let log = Logging()
        log.testMethod()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/*!
 1. Drag the xcode project to the current project
 2. In Project > General > Frameworks, Libraries, Embedded Content, add the Framework from there
 3. if you need this to be accessible have it set to public (each element of it. Default is "internal"
 
 SECOND METHOD
 1. in the original Xcode project for the framework, go to Edit Schemes and change the Run scheme to Release, then Build and Run.
 2. now go to /Users/<username>/Library/Developer/Xcode/DerivedData/LoggingFramework-bldyuddaffdwxtgjlnftaunatufj/Build/Products/Release
 3. open the project folder, create a new folder inside it and paste the whole framework folder inside of it. Then close the original framework project.
 4. Go to Frameworks and add it
 */

