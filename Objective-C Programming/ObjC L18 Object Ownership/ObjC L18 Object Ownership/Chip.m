//
//  Chip.m
//  ObjC L18 Object Ownership
//
//  Created by Michele Galvagno on 27/12/21.
//

#import "Chip.h"

@implementation Chip

- (NSString *)description {
    return @"This is a chip"; // this has autorelease baked into it
}

/* Not available with ARC 
- (void)dealloc {
    [super dealloc];
    NSLog(@"Memory, Bye bye");
}
*/

@end
