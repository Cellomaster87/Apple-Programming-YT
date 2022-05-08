//
//  CoolView.m
//  Cocoa Pr L48 PrintingIntroDocument
//
//  Created by Michele Galvagno on 08/05/22.
//

#import "CoolView.h"

@implementation CoolView

- (BOOL)acceptsFirstResponder {
    return YES;
}

- (void)printThis:(id)sender {
    // intercept the message and print ourselves
    [[NSPrintOperation printOperationWithView:self] runOperation];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    NSGraphicsContext *context = [NSGraphicsContext currentContext];
    if ([context isDrawingToScreen]) {
        [[NSColor systemRedColor] set];
        NSRectFill([self bounds]);
    } else {
        [[NSColor systemBlueColor] set];
        NSRectFill([self bounds]);
    }
}

@end
