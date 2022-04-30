//
//  Student.m
//  Cocoa Pr L42 NSCollectionView
//
//  Created by Michele Galvagno on 01/05/22.
//

#import "Student.h"

@implementation Student

@synthesize name = _name;
@synthesize rating = _rating;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Nil Billy";
        _rating = 2;
    }
    return self;
}

@end
