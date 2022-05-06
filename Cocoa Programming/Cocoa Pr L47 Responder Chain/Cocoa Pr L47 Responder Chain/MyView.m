//
//  MyView.m
//  Cocoa Pr L47 Responder Chain
//
//  Created by Michele Galvagno on 06/05/22.
//

#import "MyView.h"

@implementation MyView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (void)specialAction:(id)sender {
    NSLog(@"This is in the view!");
}

- (BOOL)acceptsFirstResponder {
    return YES;
}

@end
