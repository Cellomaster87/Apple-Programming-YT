//
//  main.m
//  ObjC L8
//
//  Created by Michele Galvagno on 23/12/21.
//

// MARK: - How objects work in Objective-C
/*!
 In C we do not have classes, nor objects (?)
 Objective-C adds to what C could do.
 
 Every new class has two sections: @interface and @implementation
 @interface contains the traits (instance variables) of the class; the properties, then the methods (just name and parameters) - we don't explain how they work
 
 @implementation > import the header file, then define the methods we have declared - what each method is going to do. We can add a `description method`
 
 To create a new object:
 1. We write the type, then the pointer to the block in memory and the declarator
 2. Inner parentheses is what we run first, e.g. [[Rectangle alloc] init]; we first allocate enough space, then we initialise the object.
 The pointer knows where the object is in memory and thus can access it.
 
 The `new` method calls `alloc` and `init` together. Not used anymore.
 
 To call methods:
 1. inside square brackets
 2. write the instance name, a space, and the name of the method, then pass arguments in
 
 Init, alloc, description > NSOBject > our class
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    return 0;
}
