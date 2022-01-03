//
//  main.m
//  ObjC L23 Selectors
//
//  Created by Michele Galvagno on 02/01/22.
//
// MARK: - Selectors
// Create and hold a method name and call it any time we want in our program
// For example in videogames we may want to call a method every 1/30th of a second

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = [NSMutableArray arrayWithObjects:@"Yoda", @"Jedi", @"Darth Vader", nil];
        SEL message = @selector(addObject:); // this will call addObject on the destination
        
        // Let's see if something would respond to this selector
        // If the method we are calling is "compatible" with the object
        if ([array respondsToSelector:message]) {
//            [array addObject:@"Soda"];
            [array performSelector:message withObject:@"Soda"];
        }
        
        NSLog(@"%@", array);
        
//        - (void)someMethod:(SEL)someSelector;
    }
    return 0;
}
