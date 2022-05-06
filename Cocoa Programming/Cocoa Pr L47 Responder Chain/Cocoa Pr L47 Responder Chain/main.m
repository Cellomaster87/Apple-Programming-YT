//
//  main.m
//  Cocoa Pr L47 Responder Chain
//
//  Created by Michele Galvagno on 06/05/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 The objects above the horizontal line are proxy objects.
 Application: a connection to the application itself
 File's Owner: later object that we create. WindowController > file's owner is the WC class. It can make connections directly in the controller from the NIB.
 First Responder: represents connections to other files. Mechanism that Cocoa has.
 Check "Apple Event Handling" documentation, "Responder Chain". FR is not an object, it just represents where the chain starts.
 
 1. add a menu item to the File menu called Special Action
 2. select First Responder, Attributes Inspector, new action "specialAction:".
 3. connect button and action
 
 4. create two classes, MyView:NSView and MyWindow:NSWindow
 5. implement specialAction in MyWindow.m and change the class of the window in the Document.xib to MyWindow
 6. add a Custom View to the canvas, and implement the specialAction in MyView.m as well but it will not work. Every view is a subclass of NSResponder, so it supports accepting First Responder status!
 7. in MyView.m add the acceptsFirstResponder method and return YES. 
 
 */
