//
//  main.m
//  Cocoa Pr L46 NSSplitView
//
//  Created by Michele Galvagno on 05/05/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. Drag a vertical split view onto the canvas. Add three separate text views (scrollable), inserting them on the dividers, then delete the two other split views. Add 'Yoda' as text in the central one, and 'Something else' in the right one.
 2. Create outlet to AppDelegate.h (interface extension) for the split view.
 3. Implement the applicationDidFinishLaunching method to create text programmatically
 4. Add conformance to the NSSplitViewDelegate;
 5. in interface, set AppDelegate as the NSSplitView's delegate;
 6. in AppDelegate.m, implement
    a) the -splitView:constrainMinCoordinate:ofSubviewAt: method,
    b) the -splitView:constrainMaxCoordinate:ofSubviewAt:,
    c) the -splitView:canCollapseSubview: ;
    d)  the -splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex: (which is just deprecated and doesn't work). 
 */
