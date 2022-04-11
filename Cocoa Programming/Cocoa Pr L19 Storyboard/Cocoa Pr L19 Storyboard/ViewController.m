//
//  ViewController.m
//  Cocoa Pr L19 Storyboard
//
//  Created by Michele Galvagno on 11/04/22.
//

#import "ViewController.h"

@implementation ViewController

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

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
