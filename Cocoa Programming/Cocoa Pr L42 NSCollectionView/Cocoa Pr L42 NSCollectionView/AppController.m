//
//  AppController.m
//  Cocoa Pr L42 NSCollectionView
//
//  Created by Michele Galvagno on 01/05/22.
//

#import "AppController.h"
#import "Student.h"

@implementation AppController
@synthesize students = _students;

- (void) awakeFromNib {
    Student *s = [[Student alloc] init];
    s.name = @"Lucas";
    s.rating = 4;
    _students = [[NSMutableArray alloc] init];
    [_arrayController addObject:s];
}

@end
