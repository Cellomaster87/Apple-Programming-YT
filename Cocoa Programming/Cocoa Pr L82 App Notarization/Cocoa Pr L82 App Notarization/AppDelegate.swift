//
//  AppDelegate.swift
//  Cocoa Pr L82 App Notarization
//
//  Created by Michele Galvagno on 05/10/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/**
 NOTARIZING AN APP
 1. TERMINAL: spctl -vv -a <appPath>
 2. Product > Archive
 3. Distribute App > Developer ID > Next
 4. Upload > Next
 5. Automatically manage signing > wait > Close
 
 Or, manually:
 1.-3. same
 4. Export > Next
 5. same > wait > Export
 6. staple the ticket to the app via Terminal 'xcrun stapler validate <dropTheAppPath>
    a. xcrun altool --list-providers -u <Username> -p @keychain.password (to show providers)
 7. xcrun altool --notarize-app --primary-bundle-id "<bundleName.zip>" - <developerIdentifier> -p "@keychain:password" --asc-provider <Provider> --file <dropTheAppPath.zip>
 8. xcrun altool --notarization-info <uploadID> -u <Username> -p <Password>
 9. xcrun stapler validate <appPath>
 10. xcrun stabler staple <appPath>
 11. spctl -vv -a <appPath>
 
 */

