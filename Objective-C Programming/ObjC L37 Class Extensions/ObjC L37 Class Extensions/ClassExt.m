//
//  ClassExt.m
//  ObjC L37 Class Extensions
//
//  Created by Michele Galvagno on 21/02/22.
//

#import "ClassExt.h"

// Extension goes here
@interface ClassExt () {
    NSString *str;
}
@property (readwrite, copy) NSString *name; // readwrite is the default, can be left out
//- (void)something;
@end

@implementation ClassExt {
    NSString *myStr;
}

@synthesize name;

- (id)init {
    self = [super init];
    if (self) {
        str = @"Best";
    }
    return self;
}

- (void)log {
    [self setName:@"Yoda"];
    NSLog(@"%@, %@", str, name);
}

@end
