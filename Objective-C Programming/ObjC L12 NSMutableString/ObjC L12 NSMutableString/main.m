//
//  main.m
//  ObjC L12 NSMutableString
//
//  Created by Michele Galvagno on 25/12/21.
//

// MARK: - NSMutableString
/**
 You can change the value of your string class/object
 Let's me remove/add elements from a string that I have already created
 It is a subclass of NSString
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [NSMutableString stringWithCapacity:30]; // this creates a temporary object
        NSMutableString *permanentStr = [[NSMutableString alloc] initWithCapacity:30]; // this number refers only to the initial size.
        
        [str appendString:@"Yoda was a "];
        NSLog(@"%@", str);
        
        // append format can add objects to the string
        [str appendFormat:@"super green %@", @"monkey"];
        NSLog(@"%@", str);
        
        // a container with two integers, location and length
        // Find the location of where the string starts and the length of the same string
        // The first character is at location 0 (zero)
        // NSRange is not a class so I do not need to use the * when creating an instance
        NSRange strRange = [str rangeOfString:@"green "];
        NSLog(@"The range lenght is %lu, and its location is %d", (unsigned long)strRange.length, strRange.location);
        
        [str deleteCharactersInRange:strRange];
        NSLog(@"%@", str);
        
        [str insertString:@"cool " atIndex:strRange.location];
        NSLog(@"%@", str);
        
        [str setString:@"BOB"];
        NSLog(@"%@", str);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
