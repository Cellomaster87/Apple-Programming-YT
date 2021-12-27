//
//  main.m
//  ObjC L18 Object Ownership
//
//  Created by Michele Galvagno on 27/12/21.
//
// MARK: - Object Ownership
/**
 Who owns what? 
 */

#import <Foundation/Foundation.h>
#import "Computer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Computer *comp = [[Computer alloc] init];
        Chip *chip = [[Chip alloc] init];
        
        [comp setChip:chip]; // taking the address of where that object is
        
        /* now we should release the object chip but ARC is doing it on its own
        [chip release];
         */
        
        NSLog(@"%@", [comp chip]);
        /*
        [comp release];
         */
    }
    return 0;
}
