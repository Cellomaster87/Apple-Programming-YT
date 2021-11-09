//
//  main.c
//  Lesson 18 define
//
//  Created by Michele Galvagno on 10/11/21.
//

#include <stdio.h>

/* #define lets you create a variable
 and then substitute it anywhere in your
 program.
1. It is accessible to all functions one creates
2. It is a constant

Two ways of naming them, either with 'k' in front of the name
or in all CAPS, separating words with underscores. */
#define kMax 200 // kMax gets a value of 200

// We can make functions with parameters
#define kAddFive(a) a + 5

// Every time something happens we want a "Thank you"
#define kThanks "Thanks for your money\n"

int main(int argc, const char * argv[]) {
    
    printf("%d\n", kMax);
    printf("%d + 5 is equal to %d\n", 6, kAddFive(6));
    printf(kThanks);
    
    return 0;
}
