//
//  main.m
//  ObjC L28 KeyValue Observing
//
//  Created by Michele Galvagno on 11/01/22.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *me = [[Person alloc] init];
        Dog *dog = [[Dog alloc] init];
        
        // add ourselves as observers
        [dog addObserver:me
              forKeyPath:@"hunger"
                 options: /* NSKeyValueObservingOptionNew */ NSKeyValueObservingOptionOld // we want to receive the new value
                 context:NULL]; // pointing to nothing at all
        
        // we need a way of responding to these changes
        [dog setHunger:67];
        [dog setHunger:45];
        
        [dog removeObserver:me forKeyPath:@"hunger"];
        
    }
    return 0;
}
