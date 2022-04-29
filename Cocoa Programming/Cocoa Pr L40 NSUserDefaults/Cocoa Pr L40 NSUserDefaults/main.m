//
//  main.m
//  Cocoa Pr L40 NSUserDefaults
//
//  Created by Michele Galvagno on 29/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. MainMenu.xib: add a button "Change Title", and a text field. Resize the window.
 2. Assistant Editor: connect text field and create action for button pressed.
 3. AppDelegate.m: create a macro kWindowTitle @"WindowTitle";
 4. in applicationDidFinishLaunching implement the code to retrieve our window title and to set it up accordingly
 5. in changeTitle: set the window title to the string value of the title text field
 6. in applicationWillTerminate: set the string value of the title text field object for the key kWindowTitle in the standard user defaults
 7. implement the class method +initialize, create a *defaults NSDictionary with @"Initial Window Title" for object and our macro for key. Then register defaults with that dictionary.
 
 */
