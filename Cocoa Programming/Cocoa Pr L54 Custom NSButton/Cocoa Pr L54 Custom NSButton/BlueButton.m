//
//  BlueButton.m
//  Cocoa Pr L54 Custom NSButton
//
//  Created by Michele Galvagno on 18/05/22.
//

#import "BlueButton.h"

@implementation BlueButton

- (BOOL)wantsUpdateLayer {
    return YES;
}

- (void)updateLayer {
    self.layer.contentsCenter = CGRectMake(0.5, 0.5, 0, 0);
    if ([self.cell isHighlighted]) {
        self.layer.contents = [NSImage imageNamed:@"button_pressed.png"];
    } else {
        self.layer.contents = [NSImage imageNamed:@"button.png"];
    }
}

@end
