//
//  Assignment.m
//  Cocoa Pr L21 ReferenceCounting
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
        name = @"Calc Quiz"; // [[NSString alloc] initWithString:@"Calc Quiz"];
        grade = 95;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        name = [coder decodeObjectForKey:@"name"];
        grade = [coder decodeIntForKey:@"grade"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:name forKey:@"name"];
    [coder encodeInt:grade forKey:@"grade"];
}

@end
