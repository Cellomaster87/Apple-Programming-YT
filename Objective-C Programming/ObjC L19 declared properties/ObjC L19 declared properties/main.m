//
//  main.m
//  ObjC L19 declared properties
//
//  Created by Michele Galvagno on 29/12/21.
//
// MARK: - @property
/**
 How we use declared properties in Objective C
 This is an Objective-C 2.0 feature
 Property let us create setters and getters for instances in our classes
 */

#import <Foundation/Foundation.h>
#import "Animal.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Animal *animal = [[Animal alloc] init];
        
        [animal setAge:6];
        [animal setHeight:4];
        [animal setSuperMonkeyName:@"Bob"];
        
    }
    return 0;
}
