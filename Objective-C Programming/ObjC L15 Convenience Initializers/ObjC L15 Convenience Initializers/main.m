//
//  main.m
//  ObjC L15 Convenience Initializers
//
//  Created by Michele Galvagno on 26/12/21.
//
// MARK: - Convenience initializers 

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rect = [[Rectangle alloc] init];
        
        NSLog(@"%@", rect);        
    }
    return 0;
}
