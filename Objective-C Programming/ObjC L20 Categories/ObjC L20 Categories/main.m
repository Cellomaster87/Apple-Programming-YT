//
//  main.m
//  ObjC L20 Categories
//
//  Created by Michele Galvagno on 29/12/21.
//
// MARK: - Categories
/*!
 Categories are a way to add methods to classes you wouldn't normally have access to
 We can add methods without subclassing (extension?)
 */

#import <Foundation/Foundation.h>
#import "NSString-Movies.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"John.mov";
        
        if ([str isAMovie]) {
            NSLog(@"Yes, this is a movie!");
        }
        
    }
    return 0;
}
