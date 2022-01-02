//
//  main.m
//  ObjC L22 NSNumber
//
//  Created by Michele Galvagno on 02/01/22.
//
// MARK: - NSNumber
// The main purpose is to add numbers to your arrays, as they cannot accept
// primitive types.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:4]; // starts with capacity 4, but can expand in time
        for (int i = 0; i < 4; i++)
            [array addObject:[NSNumber numberWithInt:i]];
        
        NSLog(@"%@", array);
        
        // Retrieving the values of NSNumbers and putting them back into primitive types
        NSNumber *n = [array objectAtIndex:1];
        int num = [n intValue];
        
        NSLog(@"%d", num);
        
        // Return a string that holds the value
        NSString *str = [n stringValue];
        
        NSLog(@"%@", str);
        
        if ([n isEqualToNumber:[array objectAtIndex:2]]) {
            NSLog(@"Yo, this number is the same");
        } else {
            NSLog(@"Yo, this number is not the same");
        }
        
    }
    return 0;
}
