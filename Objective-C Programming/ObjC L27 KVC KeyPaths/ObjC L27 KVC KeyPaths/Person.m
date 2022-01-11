//
//  Person.m
//  ObjC L27 KVC KeyPaths
//
//  Created by Michele Galvagno on 11/01/22.
//

#import "Person.h"
#import "Cookie.h"

@implementation Person

@synthesize name;
@synthesize age;
@synthesize cookie;

- (id)init {
    self = [super init];
    if (self) {
        name = @"Yoda";
        age = 6;
        cookie = [[Cookie alloc] init];
    }
    return self;
}

/*
 - (void)dealloc {
 [cookie release];
 [name release];
 [super dealloc];
 */

@end
