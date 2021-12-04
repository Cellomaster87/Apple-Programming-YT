//
//  main.c
//  Lesson 42 Enumerated Types (enum)
//
//  Created by Michele Galvagno on 04/12/21.
//

#include <stdio.h>
#include "enum_types.h" // 2.

int main(int argc, const char * argv[]) {
    /*
     Enumeration variable names that have integer values assigned to them.
     They are just integer constants. Good in you have "similar" data (a deck of cards).
     */
    
    // 1. create the header file
    // 2. include header file
    // 3. create an enum of type Placement and give p1 the value stored in First
    enum Placement p1 = First;
    enum Placement p2 = Second;
    
    if (p1 < p2) {
        printf("Person 1 is better than Person 2\n");
    }
    
    // We can also compare the values directly
    if (Second < Third) {
        printf("Second is better than Third\n");
    }
    
    return 0;
}
