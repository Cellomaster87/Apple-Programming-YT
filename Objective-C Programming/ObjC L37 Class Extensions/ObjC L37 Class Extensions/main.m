//
//  main.m
//  ObjC L37 Class Extensions
//
//  Created by Michele Galvagno on 21/02/22.
//

#import <Foundation/Foundation.h>
#import "ClassExt.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassExt *ourClass = [[ClassExt alloc] init];
        [ourClass log];
    }
    return 0;
}
