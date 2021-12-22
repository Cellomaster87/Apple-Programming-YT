//
//  main.m
//  ObjC L5
//
//  Created by Michele Galvagno on 22/12/21.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Any class you create will be a pointer if you are going to make an instance of it
        Rectangle *rect /* now create space for the instance */ = [[Rectangle alloc] /* the syntax looks like an array, but it is how you call methods in Obj-C */ init]; // this is how we initialise an instance of a class
        
        [rect setHeight:10]; // this is how you call methods on an instance of a class. Square bracket > name of the instance > name of the method and argument
        [rect setWidth:5];
        
        NSLog(@"Width: %d, Height: %d", [rect width], [rect height]); // we are now using our getter methods
        
        [rect setHeight:6 width:4];
        
        NSLog(@"Width: %d, Height: %d", [rect width], [rect height]);
    }
    return 0;
}
