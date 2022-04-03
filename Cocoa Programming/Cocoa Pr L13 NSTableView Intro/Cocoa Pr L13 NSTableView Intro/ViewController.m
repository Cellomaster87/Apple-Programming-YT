//
//  ViewController.m
//  Cocoa Pr L13 NSTableView Intro
//
//  Created by Michele Galvagno on 03/04/22.
//

/**
 Not using the TableViewController separate class.
 Declaring *list in the .h file fails; set it up under the @implementation line
 list = [[NSMutableArray alloc] init] added in viewDidLoad
 */

#import "ViewController.h"

@implementation ViewController

NSMutableArray *list;

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    list = [[NSMutableArray alloc] init];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
