//
//  main.m
//  ObjC L38 Literals
//
//  Created by Michele Galvagno on 21/02/22.
//

#import <Foundation/Foundation.h>

/*! LITERALS are a new feature in Xcode 4.4
 Added support for Arrays, Dictionaries, etc...
 
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // This is a string literal
        NSString *str = @"String";
        NSLog(@"%@", str);
        
        // Old way
        NSNumber *intNumOld = [NSNumber numberWithInt:67];
        NSLog(@"Old %@", intNumOld);
        NSArray *oldArray = [NSArray arrayWithObjects:str, intNumOld, nil];
        NSLog(@"Old %@", oldArray);
        NSDictionary *oldDict = [NSDictionary dictionaryWithObjectsAndKeys:@"First Obj", @"key1", nil];
        NSLog(@"Old %@", oldDict);
        
        // New way
        NSNumber *intNumNew = @4.56f; // L for long
        NSLog(@"New %@", intNumNew);
        NSArray *newArray = @[ str, intNumNew ]; // no need for nil at the end
        NSLog(@"New %@", newArray);
        NSDictionary *newDict = @{ @"key1" : str, @"key2" : intNumNew };
        NSLog(@"New %@", newDict);
        
    }
    return 0;
}
