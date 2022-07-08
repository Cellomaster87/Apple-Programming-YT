//
//  ModalViewController.m
//  Cocoa Pr L67 PresentingVC
//
//  Created by Michele Galvagno on 08/07/22.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self.view layer] setBackgroundColor:NSColor.systemYellowColor.CGColor];
    [[self.view layer] setCornerRadius:5];
}

- (IBAction)dismissVC:(NSButton *)sender {
    [self dismissController:self];
}

@end
