//
//  MainWindowController.m
//  Cocoa Pr L69 ObjC
//
//  Created by Michele Galvagno on 02/09/22.
//

#import "MainWindowController.h"
#import "ViewController.h"

@interface MainWindowController ()

@end

@implementation MainWindowController
- (instancetype)init
{
    self = [super initWithWindowNibName:@"MainWindowController" owner:self];
    
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    [self setContentViewController:[[ViewController alloc] init]];
}

@end
