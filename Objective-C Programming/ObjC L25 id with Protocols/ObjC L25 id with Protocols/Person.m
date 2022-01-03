//
//  Person.m
//  ObjC L25 id with Protocols
//
//  Created by Michele Galvagno on 03/01/22.
//

#import "Person.h"

@implementation Person

@synthesize age;

// Return an object of type id, which is a generic pointer object
- (id)init {
    self = [super init];
    if (self) {
        age = 6;
    }
    
    return self;
}

- (void)log {
    NSLog(@"I am %d years old", age);
}

@end
