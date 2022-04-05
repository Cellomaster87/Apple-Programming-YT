//
//  AppController.m
//  Cocoa Pr L16 Menu Items
//
//  Created by Michele Galvagno on 05/04/22.
//

#import "AppController.h"

@implementation AppController

- (instancetype)init
{
    self = [super init];
    if (self) {
        // Initialisation code here
    }
    return self;
}

- (IBAction)sayHello:(id)sender {
    [label setStringValue:@"Hello"];
}

- (IBAction)sayGoodbye:(id)sender {
    [label setStringValue:@"Goodbye"];
}

@end
