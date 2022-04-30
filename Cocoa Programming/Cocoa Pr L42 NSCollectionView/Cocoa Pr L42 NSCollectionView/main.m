//
//  main.m
//  Cocoa Pr L42 NSCollectionView
//
//  Created by Michele Galvagno on 01/05/22.
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
    a) add a Collection View, stretch it to the sides, add constraints
    b) add a Button "Add Student"
    This should have added two elements on the workbench, but it didn't. Adding a Collection View Item added one to the bench but didn't add the View.
    Temporary workaround: use a Custom View and connect the view outlet of the CVItem to it.
 2. In the View for the CVItem, add a Label, a Text Field, a Level Indicator. Change the LI to show Ratings, to be editable, and to support up to 5 stars.
 3. Add a Student:NSObject class.
    a) In .h, create @property (strong) NSString name and int rating;
    b) In .m, @synthesize both properties with the underscore name, then override the init method
 4. Create AppController:NSObject class.
    a) in .h, create IBOutlet for an NSArrayController and a @property for a students NSMutableArray
    b) in .m, synthesize the students property with underscore name.
 5. MainMenu.xib
    a) add an Object for the AppController
    b) add an ArrayController and set the connections between AppController and it.
    c) select ArrayController > Attributes Inspector > Class = Student, add name and rating to the keys; Binding Inspector > Content Array > Bind to: App Controller > Model Key Path: students
    d) select Collection View > Binding Inspector > Content > Bind to: Array Controller > Controller Key: arrangedObjects
    e) select the Custom View > connect the text field and the level to Collection View Item > Controller Key: representedObject.name/rating.
    f) connect the add: action of the ArrayController to the Add Student button
 6. AppController.m: implement awakeFromNib
    
 
 */
