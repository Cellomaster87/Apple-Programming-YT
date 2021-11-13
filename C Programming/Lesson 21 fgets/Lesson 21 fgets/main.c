//
//  main.c
//  Lesson 21 fgets
//
//  Created by Michele Galvagno on 13/11/21.
//

/* HOW STRINGS WORK
 We need a special character at the end to show that the string is actually over.
 The "null character" (ø) is what the computer is looking for to know where the end of the string is.
 */

#include <stdio.h>
/// Create a macro that sets the maximum size of the array
#define myMAX 11

int main(int argc, const char * argv[]) {
    /// fgets = file get strings
    /// 1. create a character array that contains 10 character, so create one with 11
    char myArray[myMAX];
    
    /// 2. ask for the person's first name
    printf("Please enter your first name: ");
    
    /// 3. fgets looks for a pointer character that is pointing to the address of the 0th element of the array in memory; int is the number of elements in the array, FILE *, for now write stdin for standard input)
    fgets(&myArray[0], myMAX, stdin);
    
    /// 4. print some message
    printf("Welcome %s", myArray);
    
    return 0;
}
