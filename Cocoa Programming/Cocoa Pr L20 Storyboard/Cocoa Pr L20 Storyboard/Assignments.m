//
//  Assignments.m
//  Cocoa Pr L20 Storyboard
//
//  Created by Michele Galvagno on 12/04/22.
//

#import "Assignments.h"

@implementation Assignments

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
