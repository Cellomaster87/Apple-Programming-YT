//
//  OurClass.m
//  ObjC L39 Authomatic Synthesis
//
//  Created by Michele Galvagno on 21/02/22.
//

#import "OurClass.h"

@implementation OurClass
// no need for @synthesize coolInt = _coolInt (underscore property name is automatically the instance variable we would have created)

// Private methods
// Since Xcode 4.4, it looks for the whole class during compilation
// In past versions, methodB would've not been declared yet by the time it was called
- (void)methodA {
    [self methodB];
}

- (void)methodB {
    NSLog(@"Hi");
}


@end
