//
//  main.m
//  ObjC L35 ARC Intro
//
//  Created by Michele Galvagno on 15/02/22.
//

#import <Foundation/Foundation.h>
#import "Pet.h"
#import "Toy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*!
         ARC = Automatic Reference Counting
         THE way to manage your memory
         Looks at code, what the user has allocated, then releases it when an object is no longer needed (retain/release calls will be inserted automatically)
         */
        Pet *pet = [[Pet alloc] init];
        if (pet) {
            Toy *toy = [[Toy alloc] init];
            [pet setToy:toy];
            NSLog(@"%@", toy);
//            [toy release];
        }
        NSLog(@"%@", pet);
//        [pet release];
        
    }
    return 0;
}
