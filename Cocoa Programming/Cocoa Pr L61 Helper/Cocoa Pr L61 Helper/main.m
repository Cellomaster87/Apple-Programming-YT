//
//  main.m
//  Cocoa Pr L61 Helper
//
//  Created by Michele Galvagno on 06/06/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. Create two projects, the main app and the helper, adding it to the group
 2. L61 Project:
    a. Add ServiceManagement framework
    b. Add App Sandbox in Signing & Capabilities
    c. Set Strip Debug Symbols During Copy to NO in Build Settings
    d. Build Phases > Copy Files > Destination = Wrapper, add the Helper app
 3. L61 Helper:
    a. Info > Custom macOS Application Target Properties > add row > Application is background only > YES
    b. Build settings > Skip Install > YES
    c. MainMenu.xib > delete all user interface
    d. AppDelegate.m > implement -applicationDidFinishLaunching:
 4. L61 Project:
    a. MainMenu.xib > add a Check Box "Login Item Enabled" and a Label "Lesson 61"
    b. open assistant editor > add action for the Checkbox
    c. back to IB > state of checkbox = OFF
    d. AppDelegate.m > import <ServiceManagement> framework, implement -loginItemPressed
 */
