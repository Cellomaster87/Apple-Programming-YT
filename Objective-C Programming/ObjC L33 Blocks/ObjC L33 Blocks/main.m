//
//  main.m
//  ObjC L33 Blocks
//
//  Created by Michele Galvagno on 15/02/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Extension to C
        // Block of code, it's a return type, and can take parameters
        // Function scope
        
        int num = 2;
        
        int (^myBlock)(void) = ^ {
            return num * 6;
        };
        
        NSLog(@"%d", myBlock());
        num = 5;
        NSLog(@"%d", myBlock()); // it still prints 12. The block doesn't change as other things change around it.
    }
    return 0;
}
