//
//  Assignment.m
//  Cocoa Pr L20 Grades
//
//  Created by Michele Galvagno on 12/04/22.
//

#import "Assignment.h"

@implementation Assignment

@synthesize name;
@synthesize grade;

- (instancetype)init
{
    self = [super init];
    if (self) {
        name = @"Calc Quiz"; // [[NSString alloc] initWithString:@"Calc Quiz"];
        grade = 95;
    }
    return self;
}

@end
