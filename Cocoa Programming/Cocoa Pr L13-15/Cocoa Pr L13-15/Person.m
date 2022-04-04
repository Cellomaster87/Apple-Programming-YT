//
//  Person.m
//  Cocoa Pr L13-15
//
//  Created by Michele Galvagno on 04/04/22.
//

#import "Person.h"

@implementation Person

@synthesize name;
@synthesize age;

- (id)init
{
    self = [super init];
    if (self) {
        name = @"Yoda";
        age = 300;
    }
    return self;
}

@end
