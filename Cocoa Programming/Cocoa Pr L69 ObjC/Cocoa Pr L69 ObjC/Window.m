//
//  Window.m
//  Cocoa Pr L69 ObjC
//
//  Created by Michele Galvagno on 02/09/22.
//

#import "Window.h"

@implementation Window

- (instancetype)initWithContentRect:(NSRect)contentRect styleMask:(NSWindowStyleMask)style backing:(NSBackingStoreType)backingStoreType defer:(BOOL)flag {
    self = [super initWithContentRect:contentRect styleMask:NSWindowStyleMaskFullSizeContentView backing:NSBackingStoreBuffered defer:YES];
    
    self.movableByWindowBackground = YES;
    self.backgroundColor = [NSColor systemGrayColor];
    NSLog(@"Window class initialised!");
    
    return self;
}



@end
