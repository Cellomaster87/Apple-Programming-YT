//
//  OurView.m
//  Cocoa Pr L10 NSImageView
//
//  Created by Michele Galvagno on 19/03/22.
//

#import "OurView.h"

@implementation OurView
// Add the initWithFrame method, it was not in the template
- (instancetype)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Coordinate system: origin is in the bottom left
        NSRect rect = NSMakeRect(10, 10, 400, 300); // no pointer because it's a struct, not a class
        imageView = [[NSImageView alloc] initWithFrame:rect];
        
        // Scaling (image behaviour)
        [imageView setImageScaling:NSImageScaleAxesIndependently];
        
        // Add image into Image View
        [imageView setImage:[NSImage imageNamed:@"Armonici-Cello.png"]];
        // Add imageview into view
        [self addSubview:imageView];
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
