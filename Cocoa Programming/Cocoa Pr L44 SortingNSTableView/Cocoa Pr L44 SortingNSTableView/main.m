//
//  main.m
//  Cocoa Pr L45 SearchingNSTableView
//
//  Created by Michele Galvagno on 03/05/22.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    return NSApplicationMain(argc, argv);
}

/*!
 1. Drag a Search Field to the canvas
 2. Search Field > Binding Inspector > Search > Predicate > Bind to Array Controller
 3. in "Predicate Format" change 'keyPath' to 'name', then add [cd] to 'contains', to make search case insensitive and to ignore diacriticals, then parenthesize the whole formula and add or (age ==$value.intValue)
 4. deselect the binding and set it in code. In AppController.m, add an NSPredicate *_searchPredicate property, then an action from the search field.
 5. in AppController.h, add a weak IBOutlet property for the NSArrayController (better to drag outlet from interface)
 6. in .m, set the _searchPredicate in the init method
 7. implement the changePredicate method
 */
