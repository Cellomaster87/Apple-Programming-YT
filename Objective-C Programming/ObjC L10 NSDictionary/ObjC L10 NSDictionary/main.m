//
//  main.m
//  ObjC L10 NSDictionary
//
//  Created by Michele Galvagno on 24/12/21.
//

// MARK: - NSDictionary
/*!
 We look up our key and we get back a value.
 We can use alloc or use convenience methods
 It can work with any object, not only strings. Normally you use strings for keys.
 We write values first, followed by the key.
 If we look for a key that doesn't exist we get back (null)
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                              @"House pet", @"Dog",
                              @"Flies around", @"Bird",
                              nil];
        NSLog(@"%@", [dict objectForKey:@"Dog"]);
        NSLog(@"%@", [dict objectForKey:@"Bird"]);
        
        NSDictionary *convenienceDict = [NSDictionary dictionaryWithObjectsAndKeys:@"House pet", @"Dog",
                                         @"Flies around", @"Bird",
                                         nil];
        
        NSLog(@"%@", [convenienceDict objectForKey:@"Dog"]);
        NSLog(@"%@", [convenienceDict objectForKey:@"Bird"]);
    }
    return 0;
}
