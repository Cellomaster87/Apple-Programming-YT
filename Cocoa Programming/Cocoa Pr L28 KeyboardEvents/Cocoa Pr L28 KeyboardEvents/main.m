//
//  main.m
//  Cocoa Pr L28 KeyboardEvents
//
//  Created by Michele Galvagno on 17/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 An application accepts keyboard events if it is able to receive FIRST RESPONDER status.
 1. create a BOOL property isOval in .h file; in .m make it YES in the initWithFrame method
 2. implement acceptsFirstResponder method and return YES
 3. implement keyDown method, setting that if the character pressed is O, isOval will switch value
 4. in drawRect set the if condition for it to draw an oval and not a rect
 */
