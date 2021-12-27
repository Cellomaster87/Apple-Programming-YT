//
//  Computer.m
//  ObjC L18 Object Ownership
//
//  Created by Michele Galvagno on 27/12/21.
//

#import "Computer.h"

@implementation Computer
-(void)setChip:(Chip *)newChip {
    // [newChip retain]; /* unavailable in ARC */
    // [chip release];
    chip = newChip;
}

- (Chip *)chip {
    return chip;
}

/*
- (void)dealloc {
    [chip release];
    [super dealloc];
}
 */

@end
