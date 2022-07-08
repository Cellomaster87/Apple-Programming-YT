//
//  InitialViewController.m
//  Cocoa Pr L67 PresentingVC
//
//  Created by Michele Galvagno on 08/07/22.
//

#import "InitialViewController.h"
#import "ModalViewController.h"
#import "ModalAnimator.h"

@interface InitialViewController ()

@end

@implementation InitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self.view layer] setBackgroundColor:NSColor.systemRedColor.CGColor];
}

- (IBAction)presentModalVC:(NSButton *)sender {
    NSLog(@"Present button pressed");
    ModalAnimator *animator = [[ModalAnimator alloc] init];
    ModalViewController *modalVC = [[ModalViewController alloc] init];
    [self presentViewController:modalVC animator:animator];
}

@end
