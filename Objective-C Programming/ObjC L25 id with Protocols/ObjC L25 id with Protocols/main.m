//
//  main.m
//  ObjC L25 id with Protocols
//
//  Created by Michele Galvagno on 03/01/22.
//

// MARK: - id with Protocols

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *me = [[Person alloc] init];
        
        id person; // we created a new object, doesn't contain anything, it is a pointer. We don't need the * here because it is already a pointer.
        person = me; // person gets me!
        
        [person log];
        
        id <Logging> logger; // we want an object that conforms to the Logging protocol, allows for some interesting checking.
        // To add multiple protocol conformances, separate them with commas
        logger = me;
        
        if ([me conformsToProtocol:@protocol(Logging)]) {
            [me log];
        }
        
    }
    return 0;
}
