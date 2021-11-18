//
//  main.c
//  Lesson 24 Type sizes
//
//  Created by Michele Galvagno on 19/11/21.
//

#include <stdio.h>

// 4. comment out everything and create a new main function
/*
int main(int argc, const char * argv[]) {
    // 1. typecasting via parentheses
    printf("The size of a char: %d\n", (int)sizeof(char));
    
    // 2. copy-paste and change the type
    printf("The size of a short: %d\n", (int)sizeof(short));
    printf("The size of an int: %d\n", (int)sizeof(int));
        // Decimal types: float is less accurate than the others
    printf("The size of a float: %d\n", (int)sizeof(float));
    printf("The size of a double: %d\n", (int)sizeof(double));
    printf("The size of a long double: %d\n", (int)sizeof(long double));
    
    // 3. build and run to get the size in bytes

    return 0;
}
 */

// 5. check the size of arrays of different types
int main(int argc, const char * argv[]) {
    // char myArray[25];
    int myArray[25];
    
    printf("The size of a myArray: %d\n", (int)sizeof(myArray));
    return 0;
    
}
