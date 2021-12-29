//
//  Animal.m
//  ObjC L19 declared properties
//
//  Created by Michele Galvagno on 29/12/21.
//

#import "Animal.h"

@implementation Animal

@synthesize age, height;
@synthesize name; // we don't have the pointer here anymore

// To override setters and getters
-(void)setAge:(int)a {
    age = a+1;
}

@end
