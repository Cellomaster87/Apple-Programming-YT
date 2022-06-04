//
//  QuickLookTableView.m
//  Cocoa Pr L60 QuickLookPreviewPanel
//
//  Created by Michele Galvagno on 03/06/22.
//

#import "QuickLookTableView.h"

@implementation QuickLookTableView

- (void)keyDown:(NSEvent *)event {
    NSString *characters = [event characters];
    if ([characters isEqualToString:@" "]) {
        [self.qlDelegate didPressSpacebarForTableView:self];
    } else {
        [super keyDown:event];
    }
}

@end
