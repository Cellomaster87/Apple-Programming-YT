//
//  AppDelegate.swift
//  Cocoa Pr L64 Swift
//
//  Created by Michele Galvagno on 13/06/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate, NSGestureRecognizerDelegate {

    @IBOutlet var window: NSWindow!
    @IBOutlet weak var view: NSView!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        view.layer?.backgroundColor = NSColor.systemRed.cgColor
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
    
    @IBAction func pressView(_ sender: NSPressGestureRecognizer) {
        if sender.state == .began {
            view.layer?.backgroundColor = NSColor.randomColor().cgColor
        }
    }
    
    @IBAction func panView(_ sender: NSPanGestureRecognizer) {
        let t = sender.translation(in: window.contentView)
        sender.view?.frame = NSOffsetRect(sender.view!.frame, t.x, t.y)
        sender.setTranslation(NSZeroPoint, in: nil)
    }
    
    @IBAction func magnifyView(_ sender: NSMagnificationGestureRecognizer) {
        let mag = sender.magnification + 1.0
        let view = sender.view!
        view.layer?.setAffineTransform(view.layer!.affineTransform().scaledBy(x: mag, y: mag))
        sender.magnification = 0
    }
    
    @IBAction func rotateView(_ sender: NSRotationGestureRecognizer) {
        let rot = sender.rotation
        let view = sender.view!
        view.layer?.setAffineTransform(view.layer!.affineTransform().rotated(by: rot))
        sender.rotation = 0
    }
    
    func gestureRecognizer(_ gestureRecognizer: NSGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: NSGestureRecognizer) -> Bool {
        return true
    }
    
}

extension NSColor {
    class func randomColor() -> NSColor {
        let r = CGFloat(drand48())
        let g = CGFloat(drand48())
        let b = CGFloat(drand48())
        
        return NSColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}

/*!
 // WRITTEN IN SWIFT 5.5-5.6
 1. MainMenu.xib
    a. add a Custom View, 150x150, disable Auto Layout (if possible)
    b. select the Window > Effects Inspector > layer-back the View in Core Animation
    c. add the Press-Pan-Magnification-Rotation Gesture Recognizers to the Custom View
    d. open Assistant Editor and add an action for each of the four gesture recognizers; add an outlet for the View
 2. AppDelegate.swift
    a. implement applicationDidFinishLaunching(_:)
    b. implement the NSColor Extension
    c. implement pressView(_:), panView(_:), magnifyView(_:), rotateView(_:)
 3. MainMenu.xib > connect each of the gesture to the App Delegate object to make it their delegate
 4. AppDelegate.swift
    a. add conformance to NSGestureRecognizerDelegate
    b. return true to gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:) 
 
 */

