//
//  AppDelegate.swift
//  Cocoa Pr L72 NSGridView
//
//  Created by Michele Galvagno on 17/09/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let separator = NSBox()
        separator.boxType = .separator
        
        let grid = NSGridView(views: [
            [NSTextField(labelWithString: "Show scroll bars:"), NSButton(radioButtonWithTitle: "Automatically based on mouse or trackpad", target: nil, action: nil)],
            [NSGridCell.emptyContentView, NSButton(radioButtonWithTitle: "When scrolling", target: nil, action: nil)],
            [NSGridCell.emptyContentView, NSButton(radioButtonWithTitle: "Always", target: nil, action: nil)],
            [NSTextField(labelWithString: "Click in the scroll bar to"), NSButton(radioButtonWithTitle: "Jump to the next page", target: nil, action: nil)],
            [separator],
            [NSTextField(labelWithString: "Button:"), NSButton(title: "Button", target: nil, action: nil)],
            ])
        
        grid.translatesAutoresizingMaskIntoConstraints = false
        grid.rowAlignment = .firstBaseline
        
        grid.column(at: 0).xPlacement = .trailing
        
        grid.row(at: 3).topPadding = 10
        
        let separatorRow = grid.row(at: 4)
        separatorRow.mergeCells(in: NSRange(location: 0, length: 2))
        separatorRow.topPadding = 16
        separatorRow.bottomPadding = 16
        
        let v = window.contentView!
        v.addSubview(grid)
        
        NSLayoutConstraint.activate([
            grid.centerXAnchor.constraint(equalTo: v.centerXAnchor),
            grid.centerYAnchor.constraint(equalTo: v.centerYAnchor)
        ])
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/*
 1. AppDelegate
    a. fill in the applicationDidFinishLaunching(_:) method
    b. the outside array represents the rows
 2. Everything is much easier in Interface Builder
 
 */

