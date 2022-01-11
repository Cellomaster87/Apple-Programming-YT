//
//  main.m
//  ObjC L27 KVC KeyPaths
//
//  Created by Michele Galvagno on 11/01/22.
//

// Digging into other objects from other objects and set their values

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *me = [[Person alloc] init];
        
        [me setValue:@"Shana" forKeyPath:@"cookie.name"];
        NSLog(@"%@", [me valueForKeyPath:@"cookie.name"]);
        
    }
    return 0;
}
