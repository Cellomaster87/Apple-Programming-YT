//
//  main.m
//  ObjC L13 NSMutableArray
//
//  Created by Michele Galvagno on 25/12/21.
//
// MARK: - NSMutableArray
/**
 I can change, add or remove the objects inside of the array
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:6]; // temporary array
        NSMutableArray *array2 = [[NSMutableArray alloc] initWithCapacity:6];
        
        [array addObject:@"Mother"];
        [array addObject:@"Son"];
        
        [array insertObject:@"Father" atIndex:1]; // will push previous object at index 1 to index 2
        
        [array replaceObjectAtIndex:2 withObject:@"Daughter"];
        
        [array removeObjectAtIndex:2];
        
        [array removeLastObject]; 
        
        for (NSString *str in array)
            NSLog(@"%@", str);
        
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
