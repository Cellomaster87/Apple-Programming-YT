//
//  AppDelegate.swift
//  Cocoa Pr L66 NSLayoutAnchor
//
//  Created by Michele Galvagno on 17/06/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    var leftView = ColorView()
    var rightView = ColorView()


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        leftView.translatesAutoresizingMaskIntoConstraints = false
        rightView.translatesAutoresizingMaskIntoConstraints = false
        
        guard let view = window.contentView else { return }
        
        let leftConstraints = [
            leftView.topAnchor.constraint(equalTo: view.topAnchor),
            leftView.leftAnchor.constraint(equalTo: view.leftAnchor),
//            leftView.widthAnchor.constraint(equalToConstant: 100),
            leftView.rightAnchor.constraint(equalTo: view.centerXAnchor),
            leftView.widthAnchor.constraint(greaterThanOrEqualToConstant: 160),
            leftView.heightAnchor.constraint(equalToConstant: 100)
        ]
        
        let rightConstraints = [
//            rightView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            rightView.rightAnchor.constraint(equalTo: view.rightAnchor),
//            rightView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rightView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 50),
            rightView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rightView.widthAnchor.constraint(equalToConstant: 100),
            rightView.heightAnchor.constraint(equalToConstant: 100)
        ]
        
        view.addSubview(leftView)
        view.addSubview(rightView)
        
        NSLayoutConstraint.activate(leftConstraints)
        NSLayoutConstraint.activate(rightConstraints)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

}

/**
 1. Implement the ColorView class
 2. in AppDelegate, create two instances of ColorView
    a. in applicationDidFinishLaunching, set their translatesAutoresizingMaskIntoConstraints to false
    b. make sure that we can get the window's content view
    c. create an array of contrainst dedicated to the left view
    d. add the leftView to the view and activate its constraints
    e. repeat the process for the right view
 
 */

