//
//  main.m
//  ObjC L17 Autorelease
//
//  Created by Michele Galvagno on 26/12/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // The pool contains all the objects inside it.
        // At a certain point it will send a release message to all objects
        int age = 16;
        
        // stringWithFormat returns an autorelease object.
        // this first object will be thrown into the pool drain
        NSString *str = [NSString stringWithFormat:@"Current age: %d", age];
        NSString *str2 = [[NSString alloc] initWithFormat:@"Current age: %d", age];
        
        NSLog(@"%@", str);
        NSLog(@"%@", str2);
        
        // [str2 release]; not allowed with ARC
    }
    return 0;
}
