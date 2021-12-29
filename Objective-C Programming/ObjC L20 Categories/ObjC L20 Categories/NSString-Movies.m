//
//  NSString-Movies.m
//  ObjC L20 Categories
//
//  Created by Michele Galvagno on 29/12/21.
//

#import "NSString-Movies.h"

@implementation NSString (Movies)
// We have complete access to the class we are trying to make edits to
- (BOOL)isAMovie {
    if ([self hasSuffix:@".mov"] || [self hasSuffix:@".mp4"] || [self hasSuffix:@".flv"]) {
        return YES; // this is equivalent to return true
    }
    return NO;
}

@end
