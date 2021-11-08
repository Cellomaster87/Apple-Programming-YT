//
//  main.c
//  Lesson 17 Random Numbers
//
//  Created by Michele Galvagno on 08/11/21.
//

#include <stdio.h>
#include <stdlib.h> // #1
#include <time.h> // #2

int main(int argc, const char * argv[]) {
    srand(clock()); // #3 create a random number generator
    int num /* #5 */ = rand() % 6 + 1; // #4 we want to take out 6 numbers. Remainders from 0 to 5. We add 1 as we don't have 0 in dice.
    printf("We rolled a %d!\n", num);
    return 0;
}
