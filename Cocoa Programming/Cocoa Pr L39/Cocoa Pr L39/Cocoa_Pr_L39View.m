//
//  Cocoa_Pr_L39View.m
//  Cocoa Pr L39
//
//  Created by Michele Galvagno on 28/04/22.
//

// MARK: 6.
// Product folder is in Product > Show Build Folder in Finder, then Products > Debug

#import "Cocoa_Pr_L39View.h"

@implementation Cocoa_Pr_L39View
// MARK: 3.
@synthesize myRect;
@synthesize rectMovement;

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0]; // calls animateOneFrame
        // MARK: 4.
        myRect = NSMakeRect(0, 0, frame.size.width/10, frame.size.height/10);
        rectMovement = NSMakePoint(10, 10);
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
    // MARK: 5.
    [[NSColor whiteColor] set];
    NSRectFill(myRect);
    if (myRect.origin.x > rect.size.width - myRect.size.width)
        rectMovement.x = -rectMovement.x;
    if (myRect.origin.x < rect.origin.x)
        rectMovement.x = -rectMovement.x;
    if (myRect.origin.y > rect.size.height - myRect.size.height)
        rectMovement.y = -rectMovement.y;
    if (myRect.origin.y < rect.origin.y)
        rectMovement.y = -rectMovement.y;
    myRect.origin.x += rectMovement.x;
    myRect.origin.y += rectMovement.y;
    [[NSColor systemBlueColor] set];
    NSRectFill(self.myRect);
}

- (void)animateOneFrame
{
    // MARK: 1.
    // asks to refresh the screen
    [self setNeedsDisplay:YES];
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
