//
//  main.m
//  Cocoa Pr L43 NSSharingService
//
//  Created by Michele Galvagno on 02/05/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. MainMenu.xib:
    a) add a label "The best sharing service EVER" and a button.
    b) Erase the text, change the style to Textured Rounded (will configure in code later)
    c) add a Scrollable Text View (the Text View is no longer available, this seems to be the closest alternative)
    d) add an Image Well and set it to "Editable"
 2. Using assistant editor, in the @interface class extension of AppDelegate.m:
    a) add an outlet for the shareButton, the textView, and the imageView
    b) add an action for the button, called shareToService
    c) synthesize the three properties under the @implementation title
 3. AppDelegate.m
    a) inside applicationDidFinishLaunching, configure the shareButton with setImage and sendActionOn
    b) implement the shareToService method:
        1) create a mutable array containing the string from the textView;
        2) create an image from the imageView and, if it exists, add it to the array
        3) create a sharingPicker and initialize it with the array
        4) set up the sharingPicker delegate and show it
 4. AppDelegate.h: add conformance to the NSSharingServiceDelegate and NSSharingServicePickerDelegate protocols
 5. AppDelegate.m:
    a) implement the sharingServicePicker:delegateForSharingService: method, returning self
    b) implement the sharingService:sourceWindowForShareItems:sharingContentScore: method, returning self.window 
 */
