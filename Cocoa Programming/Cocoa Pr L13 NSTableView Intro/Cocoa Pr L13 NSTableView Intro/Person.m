//
//  Person.m
//  Cocoa Pr L13 NSTableView Intro
//
//  Created by Michele Galvagno on 03/04/22.
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
