//
//  main.m
//  ObjC L26 KeyValue Coding
//
//  Created by Michele Galvagno on 04/01/22.
//
// MARK: - KVC
/*!
 Get-set generic value in a class-structure
 Get-set value just knowing the keys
 Know the names of the keys
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *me = [[Person alloc] init];
        
        // set a value for a property in the class
        [me setValue:@"Samwise" forKey:@"name"];
        NSLog(@"%@", [me valueForKey:@"name"]);
        
        [me setValue:[NSNumber numberWithInt:10] forKey:@"age"];
        NSLog(@"%@", [me valueForKey:@"age"]);
        
        [me setValuesForKeysWithDictionary:[NSDictionary dictionaryWithObjectsAndKeys:
                                            @"Lucas", @"name",
                                            [NSNumber numberWithInt:17], @"age",
                                            nil]];
        
        NSDictionary *dict = [me dictionaryWithValuesForKeys:[NSArray arrayWithObjects:@"name", @"age", nil]];
        NSLog(@"%@", dict);
    }
    return 0;
}
