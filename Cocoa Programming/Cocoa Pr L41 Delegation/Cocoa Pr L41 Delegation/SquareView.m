//
//  SquareView.m
//  Cocoa Pr L41 Delegation
//
//  Created by Michele Galvagno on 29/04/22.
//

#import "SquareView.h"

@implementation SquareView
@synthesize delegate;

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    [[NSColor systemRedColor] set];
    int num = [delegate numberOfSquaresInSquareView:self];
    for (int i = 0; i < num; i++) {
        float x = arc4random() % (int)self.frame.size.width - 20; // 20 is the size of the rectangle
        float y = arc4random() % (int)self.frame.size.height -20;
        NSRectFill(NSMakeRect(x, y, 20, 20));
    }
}

@end
