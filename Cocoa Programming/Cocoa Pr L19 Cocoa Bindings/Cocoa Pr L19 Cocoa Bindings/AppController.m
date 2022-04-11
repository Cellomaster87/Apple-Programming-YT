//
//  AppController.m
//  Cocoa Pr L19 Cocoa Bindings
//
//  Created by Michele Galvagno on 11/04/22.
//

#import "AppController.h"

@implementation AppController

@synthesize checkBoxIsEnabled;
@synthesize amount;

- (instancetype)init
{
    self = [super init];
    if (self) {
        checkBoxIsEnabled = NO;
        amount = 20;
    }
    return self;
}

@end
