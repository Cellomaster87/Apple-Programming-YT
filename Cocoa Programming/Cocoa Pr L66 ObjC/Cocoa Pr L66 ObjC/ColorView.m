//
//  ColorView.m
//  Cocoa Pr L66 ObjC
//
//  Created by Michele Galvagno on 18/06/22.
//

#import "ColorView.h"
#import "RandomColor.h"

@implementation ColorView

- (id)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    
    if (self) {
        self.frame = NSMakeRect(10, 10, 100, 100);
        self.wantsLayer = YES;
        self.layer = [[CALayer alloc] init];
        
        self.layer.backgroundColor = [[[NSColor alloc] randomColor] CGColor];
    }
    
    NSLog(@"Color View Initialized");
    return self;
}

@end
