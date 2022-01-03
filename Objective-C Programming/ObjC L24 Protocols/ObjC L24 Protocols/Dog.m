//
//  Dog.m
//  ObjC L24 Protocols
//
//  Created by Michele Galvagno on 03/01/22.
//

#import "Dog.h"

@implementation Dog

@synthesize age;
-(void)log {
    NSLog(@"This dog is %d years old", age);
}

@end
