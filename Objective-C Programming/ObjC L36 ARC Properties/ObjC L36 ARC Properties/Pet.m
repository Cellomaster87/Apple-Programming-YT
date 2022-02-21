//
//  Pet.m
//  ObjC L36 ARC Properties
//
//  Created by Michele Galvagno on 17/02/22.
//

#import "Pet.h"
#import "Toy.h"

@implementation Pet
@synthesize toy = _toy;

- (NSString *)description {
    return [NSString stringWithFormat:@"%@", self.toy /* or [self toy] or _toy */];
}

@end
