//
//  main.m
//  Cocoa Pr L18 Multiple Windows
//
//  Created by Michele Galvagno on 09/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 0. add menu item and separator
 1. create new Window XIB from the User Interface section of New File
 2. create a label in the new Window to differentiate it
 3. create new file subclassing NSWindowController, click on File's Owner in XIB, then Identity's Inspector and set DownloadsController as class. Connect window outlet to the Window.
 */
