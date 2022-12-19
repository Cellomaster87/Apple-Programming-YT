//
//  AppDelegate.swift
//  Cocoa Pr L92 SFSymbols
//
//  Created by Michele Galvagno on 19/12/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet var window: NSWindow!
    
    @IBOutlet weak var button: NSButton!
    @IBOutlet weak var label: NSTextField!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        button.symbolConfiguration = NSImage.SymbolConfiguration(pointSize: 13, weight: .bold, scale: .medium) // (textStyle: . )
        button.image = NSImage(systemSymbolName: "square.and.arrow.up", accessibilityDescription: nil)
        label.font = NSFont.preferredFont(forTextStyle: .title1) // to match with the symbol configuration above
    }
    
}

