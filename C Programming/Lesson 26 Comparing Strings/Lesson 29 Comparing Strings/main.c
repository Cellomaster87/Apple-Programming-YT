//
//  main.c
//  Lesson 29 Comparing Strings
//
//  Created by Michele Galvagno on 22/11/21.
//

#include <stdio.h>
#include <string.h> // 1.

#define kMaxLength 30 // 2.

void ReplaceReturn(char *myString); // 3.

int main(int argc, const char * argv[]) {
    char a[kMaxLength]; // 4.
    
    // 6.
    do {
        printf("Enter the exit command: ");
        fgets(a, kMaxLength, stdin); // the first parameter is where to store the user's input
        ReplaceReturn(a);
    } while (strcmp(a, "exit") != 0);
    /* if -1, the word comes before alphabetically;
     if 0, the strings are the same
     if 1, the word comes after
     */
    
    return 0;
}

/***********************************> ReplaceReturn
 5. */
void ReplaceReturn(char *myString) {
    int length = strlen(myString);
    
    myString[length - 1] = '\0'; // this replaces the \n with the end of the string
}
