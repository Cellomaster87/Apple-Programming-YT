//
//  main.m
//  ObjC L41 NSSortDescriptor
//
//  Created by Michele Galvagno on 27/02/22.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person1 = [[Person alloc] initWithName:@"Sammy" age:18];
        Person *person2 = [[Person alloc] initWithName:@"Yoda" age:900];
        Person *person3 = [[Person alloc] initWithName:@"Matt" age:16];
        Person *person4 = [[Person alloc] initWithName:@"Z" age:18];
        Person *person5 = [[Person alloc] initWithName:@"Jesse" age:19];
        Person *person6 = [[Person alloc] initWithName:@"Joni" age:18];
        NSArray *people = @[ person1, person2, person3, person4, person5, person6 ];
        
        /* Ascending in ObjC:
         from the first to the last;
         numbers smallest to largest
         */
        
        /* 1.
        NSSortDescriptor *sorter = [[NSSortDescriptor alloc] initWithKey:@"age" ascending:YES];
        NSArray *sortDescriptors = @[ sorter ]; // adding other descriptors will sort out values that are the same
        NSArray *sortedArray = [people sortedArrayUsingDescriptors:sortDescriptors];
        
        NSLog(@"%@", sortedArray);
         */
        
        /* 2.
        NSSortDescriptor *sorter = [[NSSortDescriptor alloc] initWithKey:@"name.length" ascending:YES];
        NSArray *sortDescriptors = @[ sorter ];
        NSArray *sortedArray = [people sortedArrayUsingDescriptors:sortDescriptors];
        
        NSLog(@"%@", sortedArray);
         */
        
        /* 3.
        NSSortDescriptor *sorter = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES]; // alphabetically, but if someone entered the name without capital first, the non-capital will be put at the end
        NSArray *sortDescriptors = @[ sorter ];
        NSArray *sortedArray = [people sortedArrayUsingDescriptors:sortDescriptors];
        
        NSLog(@"%@", sortedArray);
         */
        
        NSSortDescriptor *sorter = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES /* selector:@selector( caseInsensitiveCompare: )*/ comparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
            if ([obj1 length] < [obj2 length]) {
                return NSOrderedAscending;
            }
            return NSOrderedDescending;
        }];
        NSArray *sortDescriptors = @[ sorter ];
        NSArray *sortedArray = [people sortedArrayUsingDescriptors:sortDescriptors];
        
        NSLog(@"%@", sortedArray);
    }
    return 0;
}
