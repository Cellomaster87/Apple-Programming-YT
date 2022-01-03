//
//  main.m
//  ObjC L24 Protocols
//
//  Created by Michele Galvagno on 03/01/22.
//
// MARK: - Protocols
// Set of rules or guidelines you need to follow.
// Set of methods and properties you need to use, without implementations
// Anything that conforms to the protocol, needs to comply, implementing those

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *dog = [[Dog alloc] init];
        [dog setAge:6];
        
        [dog log];
    }
    return 0;
}
