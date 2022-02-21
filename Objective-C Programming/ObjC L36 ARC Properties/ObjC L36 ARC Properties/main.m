//
//  main.m
//  ObjC L36 ARC Properties
//
//  Created by Michele Galvagno on 17/02/22.
//

#import <Foundation/Foundation.h>
#import "Pet.h"
#import "Toy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // When you create a property it is created with a (strong) reference
        // Creating it with (weak) reference will release it after assignment
        Pet *pet = [[Pet alloc] init];
        if (pet) {
            Toy *bear = [[Toy alloc] init];
            [pet setToy:bear];
            NSLog(@"%@", bear);
        }
        NSLog(@"%@", pet); // this will print (null) with weak reference
        // this will print something wrong with (assign) bc it's pointing to something that doesn't exist anymore
        
    }
    return 0;
}
