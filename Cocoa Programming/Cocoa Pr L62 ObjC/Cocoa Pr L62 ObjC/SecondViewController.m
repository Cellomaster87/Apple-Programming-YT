//
//  SecondViewController.m
//  Cocoa Pr L62 ObjC
//
//  Created by Michele Galvagno on 09/06/22.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak) IBOutlet NSTextField *nameLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _nameLabel.stringValue = self.representedObject;
}

@end
