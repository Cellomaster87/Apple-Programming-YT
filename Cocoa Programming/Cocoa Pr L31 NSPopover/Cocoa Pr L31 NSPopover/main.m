//
//  main.m
//  Cocoa Pr L31 NSPopover
//
//  Created by Michele Galvagno on 18/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. Drag a Popover and View Controller on the Workbench
 2. Drag a Custom View to the XIB but outside of the main window. Add a label to it with "This is the popover" in it.
 3. Right-click on the Popover View Controller and connect the outlet for the view to our Custom View
 4. Add a button to the main view and change its text to "Show me the popover"
 5. Select Popover on the bench, Attributes Inspector, Behaviour > Transient
 6. create outlet for the popover and action for the button in AppDelegate.h
 7. in AppDelegate.m, implement showPopover with the showRelativeToRect method. Sender is our button
 8. Drag a Window on the workbench, resize it to be roughly the size of the popover; Attributes Inspector > uncheck Visible at launch.
 9. Create an outlet for the window in AppDelegate.h, then add conformance to the NSPopoverDelegate protocol
 10. in AppDelegate.m, implement detachableWindowForPopover, returning our popoverWindow
 */
