//
//  Person.m
//  ObjC L26 KeyValue Coding
//
//  Created by Michele Galvagno on 04/01/22.
//

#import "Person.h"

@implementation Person

@synthesize name;
@synthesize age;

- (id)init {
    self = [super init];
    if (self) {
        name = @"Yoda";
        age = 6;
    }
    return self;
}

/*
- (void)dealloc {
    [name release];
    [super dealloc];
}
 */

@end
