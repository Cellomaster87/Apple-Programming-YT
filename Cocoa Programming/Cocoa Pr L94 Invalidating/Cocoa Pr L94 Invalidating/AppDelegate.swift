//
//  AppDelegate.swift
//  Cocoa Pr L94 Invalidating
//
//  Created by Michele Galvagno on 20/12/22.
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

