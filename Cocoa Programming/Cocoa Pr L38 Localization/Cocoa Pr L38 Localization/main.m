//
//  main.m
//  Cocoa Pr L38 Localization
//
//  Created by Michele Galvagno on 27/04/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/**
 Do localization at the end of the development phase!
 1. create the AppController : NSObject class, add an object to the workbench and set it up with said class.
 2. add a button "English Button", then IBAction activateAlert > connect the action in IB
 3. Project Navigator > Project > Info > Localization > choose language, add it as IB and change the text of the button in the (other language) XIB
 4. Implement the activateAlert method by creating an alert and using the NSLocalizableString macro to add keys and comments.
 5. Create a new empty file called Localizable.string
 6. Inside it, create lines that put the key equal to the comment
 7. Click Localize, then check every language you need. A chevron will appear in Project Navigator next to Localizable.string including all localization files. Change the comment part to the new language version.
 */
