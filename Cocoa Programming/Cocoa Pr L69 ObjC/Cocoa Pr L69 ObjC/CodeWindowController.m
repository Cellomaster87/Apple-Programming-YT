//
//  CodeWindowController.m
//  Cocoa Pr L69 ObjC
//
//  Created by Michele Galvagno on 02/09/22.
//

#import "CodeWindowController.h"
#import "Window.h"
#import "ViewController.h"

@interface CodeWindowController ()

@end

@implementation CodeWindowController
//- (instancetype)initWithWindowNibName:(NSNibName)windowNibName {
//    windowNibName = @"";
//    NSLog(@"%@", windowNibName);
//
//    return self;
//}

- (instancetype)init
{
    self = [super initWithWindowNibName:@"" owner:self];
    
    return self;
}

- (void)loadWindow {
    self.window = [[Window alloc] initWithContentRect:NSMakeRect(100, 100, 400, 300) styleMask:NSWindowStyleMaskBorderless backing:NSBackingStoreBuffered defer:YES];
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    [self setContentViewController:[[ViewController alloc] init]];
}

@end
