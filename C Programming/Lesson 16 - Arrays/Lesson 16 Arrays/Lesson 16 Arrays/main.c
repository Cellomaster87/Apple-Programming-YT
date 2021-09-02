//
//  main.c
//  Lesson 16 Arrays
//
//  Created by Michele Galvagno on 02/09/21.
//

// MARK: - ARRAYS
#include <stdio.h>

int main(int argc, const char * argv[]) {
    int myList[50]; // <type> <variable name[<array size>]>
    /* to assign an integer to a specific point one writes:
     myList[<number between 0 and arraySize>] = <number>
     */
    // The arrays always start counting from 0! In this case it's from myList[0] to myList[49]
    
    myList[0] = 4;
    printf("%d\n", myList[0]);
    
    // How to initialise all elements of the array
    int i = 0;
    while (i < 50) {
        myList[i] = i + 1;
        i++;
    }
    
    printf("%d\n", myList[34]);
    
    return 0;
}
