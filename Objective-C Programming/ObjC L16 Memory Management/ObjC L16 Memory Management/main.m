//
//  main.m
//  ObjC L16 Memory Management
//
//  Created by Michele Galvagno on 26/12/21.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // It stays in memory until we tell it to go
        Rectangle *rect = [[Rectangle alloc] init];
        
        // When we create an object with alloc, copy, or new, they have a retain count of 1.
        // If retain count reaches 0, the object is deallocated and destroyed
        // Methods: retain (+1 to retain count) release (-1 to retain count) retainCount (returns retain count) autorelease (?)
        NSLog(@"%@", rect);
        /* 'retainCount' is unavailable: not available in automatic reference counting mode
        NSLog(@"%@", [rect retainCount]);
         */ 
        
        
    }
    return 0;
}
