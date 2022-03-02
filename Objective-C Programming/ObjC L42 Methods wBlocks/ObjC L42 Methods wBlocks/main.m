//
//  main.m
//  ObjC L42 Methods wBlocks
//
//  Created by Michele Galvagno on 02/03/22.
//

#import <Foundation/Foundation.h>
#import "JediTemple.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Block defined once & it will not change
        // Caret key ^ defines the block
        // Blocks are aware of other variables we have around it
        // MARK: - 1.
        int (^square)(int) = ^(int num) {
            return num * num;
        };
        NSLog(@"%d", square(7));
        
        // MARK: - 2.
        int num = 7;
        int (^square2)(void) = ^ {
            return num * num; // copies the values it found around
        };
        NSLog(@"Before: %d", square2());
        num = 9; // this will not change the value inside the block
        NSLog(@"After: %d", square2());
        
        // MARK: - 3.
        __block int num2 = 7; // this is now recognised as a changeable variable by the block
        int (^square3)(void) = ^ {
            return num2 * num2;
        };
        NSLog(@"Before: %d", square3());
        num2 = 9;
        NSLog(@"After: %d", square3());
        
        // MARK: - 4.
        JediTemple *temple = [[JediTemple alloc] init];
        [temple enumerateMembersWithBlock:^(NSString * _Nonnull name, int index, BOOL * _Nonnull stop) {
            if ([name isEqualToString:@"Yoda"]) {
                NSLog(@"Here's Yoda!");
                *stop = YES;
            } else {
                NSLog(@"%@", name);
            }
        }];
        
        
    }
    return 0;
}
