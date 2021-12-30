//
//  main.m
//  ObjC L21 Dot Syntax
//
//  Created by Michele Galvagno on 30/12/21.
//

// MARK: - Dot Syntax (ObjC 2.0)
/*!
 It's another way to access your members
 */

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rect = [[Rectangle alloc] init];
        [rect setHeight:6];
        [rect setWidth:4];
        
        // Setters/getters are working fine
        int h = [rect height];
        NSLog(@"%d", h);
        
        int dotH = rect.height;
        
        // These two lines are equivalent
        [rect setHeight:12];
        rect.height = 12; // this is basically calling [rect setHeight]
        
        // Something interfere with this
        // In C we would dig deeper into a struct with dot syntax
        // This causes a potential confusion, it doesn't explicitly tell what you are doing
    }
    return 0;
}
