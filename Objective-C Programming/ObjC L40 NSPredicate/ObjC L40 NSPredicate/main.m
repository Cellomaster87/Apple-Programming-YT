//
//  main.m
//  ObjC L40 NSPredicate
//
//  Created by Michele Galvagno on 27/02/22.
//

/*!
 PREDICATE: Logical operator that returns a Boolean value
 More powerful IF statements
 Filtering a list of result, returning what is appropriate
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person1 = [[Person alloc] initWithName:@"Lucas" age:18];
        Person *person2 = [[Person alloc] initWithName:@"Yoda" age:900];
        Person *person3 = [[Person alloc] initWithName:@"Matt" age:16];
        Person *person4 = [[Person alloc] initWithName:@"Z" age:18];
        Person *person5 = [[Person alloc] initWithName:@"Jesse" age:19];
        NSArray *people = @[ person1, person2, person3, person4, person5 ];
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"age < 400"];
        for (Person *p in people) {
            NSLog(@"%d", [predicate evaluateWithObject:p]); // 1 is true, 0 is false
        }
        
        // Filter out a new array
        NSArray *filteredArray = [people filteredArrayUsingPredicate:predicate]; // not part of the NSArray class; defined in the NSPredicate class (makes Categories much more powerful)
        NSLog(@"%@", filteredArray);
        
        // Compare the string value of our names
        NSPredicate *namePredicate = [NSPredicate predicateWithFormat:@"name == 'Matt'"]; // if I write it in lowercase it normally doesn't work
        NSPredicate *namePredicateUp = [NSPredicate predicateWithFormat:@"name ==[c] 'matt'"]; // [c] means "case insensitive"; [cd] "diacritic insensitive"
        NSArray *filteredArray2 = [people filteredArrayUsingPredicate:namePredicateUp];
        NSLog(@"%@", filteredArray2);
        
        // Compare length with @"name.length
        NSPredicate *nameLengthPr = [NSPredicate predicateWithFormat:@"name.length < 5"];
        NSArray *filteredArray3 = [people filteredArrayUsingPredicate:nameLengthPr];
        NSLog(@"%@", filteredArray3);
        
        /*! Compare if the name begins with "name BEGINSWITH[c] 'yo'"
         Single quotes ' ' are for strings within strings
         "name ENDSWITH 'something'"
         "name CONTAINS 'something'"
         
         Adds different parameters
         "name LIKE '???a'" > before the 'a' there are exactly three characters
         To have a letter somewhere in the string I can use 'a*'
         '?e*' * > as many character as I want before or after the letter
         
         "@(age < 400) AND (name == 'Lucas')" 
         */
        
        int age = 18;
        NSPredicate *agePredicate = [NSPredicate predicateWithFormat:@"age == %d", age];
        NSArray *filteredArray4 = [people filteredArrayUsingPredicate:agePredicate];
        NSLog(@"%@", filteredArray4);
    }
    return 0;
}
