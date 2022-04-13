//
//  Assignment.m
//  Cocoa Pr L20 Storyboard
//
//  Created by Michele Galvagno on 13/04/22.
//

#import "Assignment.h"

@implementation Assignment

@synthesize name;
@synthesize grade;

- (instancetype)init
{
    self = [super init];
    if (self) {
        name = @"Calc Quiz";
        grade = 95;
    }
    return self;
}

@end
