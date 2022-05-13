//
//  Person.m
//  Cocoa Pr L49 NSOutlineView
//
//  Created by Michele Galvagno on 09/05/22.
//

#import "Person.h"

@implementation Person

- (id)init {
    return [self initWithName:@"Test Name" age:0];
}

- (id)initWithName:(NSString *)name age:(int)age {
    self = [super init];
    if (self) {
        _name = [name copy];
        _children = [[NSMutableArray alloc] init];
        _age = age;
    }
    return self;
}

- (void)addChild:(Person *)p {
    [_children addObject:p];
}

- (void)removeChild:(Person *)p {
    [_children removeObject:p];
}

@end
