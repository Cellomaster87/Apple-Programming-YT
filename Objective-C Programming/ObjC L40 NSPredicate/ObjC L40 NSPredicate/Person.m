//
//  Person.m
//  ObjC L40 NSPredicate
//
//  Created by Michele Galvagno on 27/02/22.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString *)name age:(int)age {
    self = [super init];
    if (self) {
        _name = [name copy];
        _age = age;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ is %d years old", _name, _age];
}

@end
