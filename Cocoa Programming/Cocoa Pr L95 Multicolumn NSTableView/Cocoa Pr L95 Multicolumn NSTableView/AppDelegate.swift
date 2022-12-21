//
//  AppDelegate.swift
//  Cocoa Pr L95 Multicolumn NSTableView
//
//  Created by Michele Galvagno on 21/12/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.contentViewController = ViewController()
    }

    

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

