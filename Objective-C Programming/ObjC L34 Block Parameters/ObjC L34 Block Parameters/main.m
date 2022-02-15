//
//  main.m
//  ObjC L34 Block Parameters
//
//  Created by Michele Galvagno on 15/02/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int (^add)(int, int) = ^(int num1, int num2) {
            return num1 + num2;
        };
        
        NSLog(@"%d", add(5,2));
        NSLog(@"%d", add(8,9));
    }
    return 0;
}
