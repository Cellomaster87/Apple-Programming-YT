//
//  main.m
//  Cocoa Pr L64 NSGestureRecognizer
//
//  Created by Michele Galvagno on 13/06/22.
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
    a. add a Custom View, 150x150, disable Auto Layout (if possible)
    b. select the Window > Effects Inspector > layer-back the View in Core Animation
    c. add the Press-Pan-Magnification-Rotation Gesture Recognizers to the Custom View
    d. open Assistant Editor
 */
