//
//  ViewController.m
//  Cocoa Pr L20 Storyboard
//
//  Created by Michele Galvagno on 13/04/22.
//

#import "ViewController.h"
#import "Assignment.h"

@implementation ViewController

@synthesize assignments;

- (instancetype)init
{
    self = [super init];
    if (self) {
        id assignment = [[Assignment alloc] init];
        assignments = [[NSMutableArray alloc] initWithObjects:assignment, nil];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:assignments];

    // Update the view, if already loaded.
}


@end
