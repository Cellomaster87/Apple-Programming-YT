//
//  main.c
//  Lesson 14
//
//  Created by Michele Galvagno on 13/06/21.
//

// MARK: - Pointers in functions
/*
 Method that takes a number and have a pointer point to its address as well.
 */
#include <stdio.h>

void Square(int num, int *myPointer);

int main(int argc, const char * argv[]) {
    int originalNum = 5;
    Square(originalNum, &originalNum); // take that value & find its address.
    printf("The squared value is %d\n", originalNum);
    return 0;
}

void Square(int num, int *myPointer) {
    // The actual value
    *myPointer = num * num;
}
