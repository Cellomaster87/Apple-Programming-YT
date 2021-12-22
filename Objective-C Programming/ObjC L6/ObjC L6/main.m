//
//  main.m
//  ObjC L6
//
//  Created by Michele Galvagno on 22/12/21.
//

// MARK: - NSString
// ObjC way of holding text strings (much better than C's character arrays

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // For almost every object you are creating, you are actually creating a pointer.
        // MARK: - 1.
        NSString *string = @"I hope you enjoy these tutorials";
        /* Before we had to do this
         // allocate [[NSString alloc] initWithString:@"I hope you enjoy these tutorials"]; // there are several initialisers
         */
        
        // MARK: - 2.
        NSString *string2 = [[NSString alloc] initWithFormat:@"I am %d years old", 16];
        
        // MARK: - 3.
        NSString *string3 = [NSString stringWithString:@"Hi, I'm the shorthand string"];
        
        NSLog(@"%@", string); // %@ is for when you call any object
        NSLog(@"%@", string2);
        NSLog(@"%@", string3);
    }
    return 0;
}
