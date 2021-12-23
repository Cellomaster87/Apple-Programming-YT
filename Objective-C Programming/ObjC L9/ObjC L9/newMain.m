//
//  newMain.m
//  ObjC L9
//
//  Created by Michele Galvagno on 23/12/21.
//

// MARK: - NSArray
/*!
 It groups a certain number of objects, a _collection_ of a type.
 What makes NSArray ≠ from a normal array?
 Normal arrays work with any kind of elements. NSArray works only with objects!
 Not integers, doubles, characters etc ...
 
 nil stands for a "zero object", and it needs to be at the end of an NSArray to let it know that it is over.
 
 */

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    @autoreleasepool {
        // This is a C array, and it still works
        int numbers[10]; // there are 10 numbers in this array
        
        for (int i = 0; i < 10; i++) {
            numbers[i] = 6;
        }
        
        // This is a NSArray
        NSArray *names = [[NSArray alloc] initWithObjects:@"Lucas", @"John", @"Steve", nil];
        
        for (int i = 0; i < [names count] /* returns the number of elements in the array */; i++) {
            NSLog(@"%@", [names objectAtIndex:i]); 
        }
    }
    
    return 0;
}
