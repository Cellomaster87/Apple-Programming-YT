//
//  main.m
//  Cocoa Pr L10 NSImageView
//
//  Created by Michele Galvagno on 19/03/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 NSView sets up a coordinate system for us.
 1. create a new file, Cocoa Class, subclass of NSView, called OurView
 2. in Main.storyboard, drag out a Custom View, make it as big as the view controller, go to the Attributes Inspector and change its class to OurView
 3. in OurView.h, create a new NSView object
 */
