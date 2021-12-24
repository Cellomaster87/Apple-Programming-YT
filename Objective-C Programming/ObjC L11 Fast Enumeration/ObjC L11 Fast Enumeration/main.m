//
//  main.m
//  ObjC L11 Fast Enumeration
//
//  Created by Michele Galvagno on 24/12/21.
//
// MARK: - Fast enumeration
/**
 Equivalent to for-each loop
 This new syntax is very similar to what we will see in Swift (for i in 0...9)
 New in Objective-C 2.0 - new to macOS Leopard :-) 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithObjects:@"Yoda", @"is", @"my", @"friend", nil];
        
        for (NSString *string in array)
            NSLog(@"%@", string);
        
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"Flies around", @"Bird", @"House pet", @"Dog", nil];
        
        for (NSString *key in dict)
            NSLog(@"Key: %@, Object: %@", key, [dict objectForKey:key]);
    }
    return 0;
}
