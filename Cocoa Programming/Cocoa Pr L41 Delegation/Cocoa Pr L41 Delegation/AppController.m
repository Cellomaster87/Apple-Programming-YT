//
//  AppController.m
//  Cocoa Pr L41 Delegation
//
//  Created by Michele Galvagno on 29/04/22.
//

#import "AppController.h"

@implementation AppController
@synthesize squareView; // = _squareView;
int squareCount;

- (void)awakeFromNib {
    [squareView setDelegate:self];
    squareCount = 10; // this is to avoid the need to create an outlet for the slider
    [squareView setNeedsDisplay:YES];
}

- (void)changeSquareCount:(id)sender {
    squareCount = [sender intValue];
    [squareView setNeedsDisplay:YES];
}

- (int)numberOfSquaresInSquareView:(nonnull SquareView *)squareView {
    return squareCount;
}

@end
