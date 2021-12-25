//
//  main.m
//  ObjC L14 Initializers
//
//  Created by Michele Galvagno on 25/12/21.
//
// MARK: - Initialisers
/**
 How to change the init method in your own class
 
 */

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rect = [[Rectangle alloc] init];
        
        NSLog(@"%@", rect);
    }
    return 0;
}
