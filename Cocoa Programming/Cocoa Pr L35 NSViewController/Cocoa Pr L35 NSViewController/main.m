//
//  main.m
//  Cocoa Pr L35 NSViewController
//
//  Created by Michele Galvagno on 23/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 1. Create AppController: NSObject and two ViewController : NSViewController with XIB
 2. add labels to the view controllers to distinguish between them
 3. add a custom view to the main view, then a popup button with 2 alternatives, First and Second
 4. Set popup button elements Tags to 0 and 1; add Object > AppController to the workbench
 5. in AppController.h create two properties for ourView and ourViewController, an IBAction changeView and a changeViewController method with a tag NSInteger parameter. Synthesize the properties in the .m file. Go to MainView.xib and connect changeView to the popup button and outView to the customView.
 6. Create an enum with two constants for storing the tags of the views
 7. Create two NSString constants to store the identifiers of our two view controllers (actually, how their XIB file is named)
 8. Implement the awakeFromNib method to change the view controller to our first one
 9. Implement the changeView method, assigning the popup button's selected cell's tag to an NSInteger and changing the view controller to that tag.
 10. import FirstViewController.h and SecondViewController.h, then implement the changeViewController method.
 
 
 */
