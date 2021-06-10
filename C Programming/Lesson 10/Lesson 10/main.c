//
//  main.c
//  Lesson 10
//
//  Created by Michele Galvagno on 10/06/21.
//

// MARK: - for loops
#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 1;
    while (i <= 5) { // it needs the braces to contain the two lines of code
        printf("This is 'while loop' %d\n", i);
        i++;
    }
    
    int j; // no need to initialise it
    /*
     1. initialization = what the variable starts at
     2. condition = what makes the loop run
     3. increment is the amount of increment of the variable
     Without curly braces it is going to loop only the next line of code and then append what is coming after that.
     */
    for (j = 1; j <= 5; j++) {
        printf("This is 'for loop' %d\n", j);
    }
    
    return 0;
}
