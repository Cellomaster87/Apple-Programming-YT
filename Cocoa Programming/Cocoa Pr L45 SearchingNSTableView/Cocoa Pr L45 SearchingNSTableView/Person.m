//
//  Person.m
//  Cocoa Pr L44 SortingNSTableView
//
//  Created by Michele Galvagno on 03/05/22.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Bob";
        _age = 40;
    }
    return self;
}

@end
