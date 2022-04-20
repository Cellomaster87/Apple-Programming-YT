//
//  main.m
//  Cocoa Pr L32 Status Bar App
//
//  Created by Michele Galvagno on 20/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/*!
 1. Uncheck "Visible at Launch" for the main window of the app in the Attributes Inspector
 2. Drag a "Menu" to the workbench
 3. Delete one of the three options, change the first to "Show Window" and the second to "Quit"
 4. in AppDelegate (tutorial creates in .h, source code in .m) create an NSStatusItem *statusItem and an NSMenu outlet.
 5. implement awakeFromNib
 6. create outlet for "Show Window" and for "Quit"
 7. in Project > Info > add key "Application is agent (UIElement)" and set it to YES
 
 */
