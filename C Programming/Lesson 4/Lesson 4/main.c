//
//  main.c
//  Lesson 4
//
//  Created by Michele Galvagno on 23/05/21.
//

#include <stdio.h>

// Here we have a list of all the functions used in the program
void PrintMessage(void); // void is a return type, meaning it doesn't return anything.

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    PrintMessage();
    PrintMessage();
    PrintMessage();
    return 0;
}

// Here we define the functions listed before
void PrintMessage(void) {
    printf("This is another function\n");
}
