//
//  Dog.m
//  ObjC L28 KeyValue Observing
//
//  Created by Michele Galvagno on 11/01/22.
//

#import "Dog.h"

@implementation Dog
@synthesize hunger;
- (id)init {
    self = [super init];
    if (self) {
        hunger = 1;
    }
    return self;
}

@end
