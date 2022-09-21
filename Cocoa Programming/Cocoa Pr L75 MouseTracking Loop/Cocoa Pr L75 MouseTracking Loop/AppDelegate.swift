//
//  AppDelegate.swift
//  Cocoa Pr L75 MouseTracking Loop
//
//  Created by Michele Galvagno on 21/09/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    @IBOutlet weak var button: NSButton!
    @IBOutlet weak var trackingButton: TrackingButton!
    
    @IBOutlet weak var timeLabel: NSTextField!
    
    var timer: Timer?
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        button.target = self
        button.action = #selector(buttonPressed(_:))
        
        trackingButton.buttonPressed = {
            print("Tracking button pressed")
        }
        
        var time = 0
        timer = Timer(timeInterval: 1, repeats: true) { [weak self] _ in
            time += 1
            self?.timeLabel.integerValue = time
        }
        RunLoop.main.add(timer!, forMode: .default)
    }
    
    @objc func buttonPressed(_ sender: Any) {
        print("Normal button pressed")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

/**
 Three methods: Mouse-down, mouse-drag, mouse-up
 It doesn't block other events
 1. MainMenu.xib
    a. create a custom view, a button, and a text field and set constraints about them. The Text Field has some settings that are different from the default ones.
 2. Create a new Cocoa Class "TrackingButton: NSView", assign it to the custom view and then create an outlet for it. Also create outlets for the button, and the label
 3. AppDelegate.swift
    a. create an optional Timer property
    b. in applicationDidFinishLaunching
        1. set the button's target to self,
        2. its action to the selector declared below.
        3. Create a time integer property set to 0, initialise a new timer and set it to run on the main thread
    c. create the buttonPressed(_:) selector
 4. in TrackingButton.swift
    a. create the highlight property, then the buttonPressed property
    b. override wantsUpdateLayer & updateLayer
    c. implement the three methods: mouseDown(with:), mouseUp(with:), and mouseDragged(with:).
    d. try the app in this way
    e. comment out the three methods and implement the new mouseDown(with:) method
 */

