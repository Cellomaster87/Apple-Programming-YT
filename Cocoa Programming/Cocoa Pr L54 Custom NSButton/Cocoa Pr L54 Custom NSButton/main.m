//
//  main.m
//  Cocoa Pr L54 Custom NSButton
//
//  Created by Michele Galvagno on 18/05/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. MainMenu.xib
    a. select button > View Effect inspector > Core Animation Layer > enable the "superview" (View in this case), so that every "subview" will also have it
 2. Create a BlueButton:NSButton subclass, then assign it to the button in IB
 3. in BlueButton.m
    a. return YES to -wantsUpdateLayer
    b. implement the -updateLayer method
 
 
 */
