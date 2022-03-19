//
//  ViewController.m
//  Cocoa Pr L10 NSImageView
//
//  Created by Michele Galvagno on 19/03/22.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    NSRect rect = NSMakeRect(10, 10, 400, 300);
    NSImageView *imageView;
    
    imageView = [[NSImageView alloc] initWithFrame:rect];
    [imageView setImageScaling:NSImageScaleAxesIndependently];
    [imageView setImage:[NSImage imageNamed:@"Armonici-Cello.png"]];

    [_ourView addSubview:imageView];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
