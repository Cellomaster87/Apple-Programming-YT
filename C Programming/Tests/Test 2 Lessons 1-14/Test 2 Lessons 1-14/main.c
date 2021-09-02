//
//  main.c
//  Test 2 Lessons 1-14
//
//  Created by Michele Galvagno on 02/09/21.
//

#include <stdio.h>
#include <stdbool.h>

int main(int argc, const char * argv[]) {
// MARK: - 1
    int num = 0;
    while (num < 4) {
        printf("This is loop: %d\n", num); // there was %f which defined a floating-point number, not an integer
        num++;
    }
    
// MARK: - 2
    /*
    while ()
        num++;
     There was no expression in the while condition check.
     */
    
// MARK: - 3
    /*
    for (int i = 0; i >= 0; i++)
        printf("%d\n", i);
     */
    // The error seems being that this creates an infinite loop.
    // Why doesn't it say that the next line of code will not be executed?
    
// MARK: - 4
    int *myPointer, num1;
    num = 5;
    myPointer = &num1; // to read the address of `num` the `&` is needed, not the `$` sign
    printf("%d\n", *myPointer);
    
    // The & is the address-of operator, not the $ symbol.
    // Reminder: The * operator shows the actual value (& is where it is located in memory, * is the value stored in memory)
    
// MARK: - 5
    bool yesPrint = true;
    if (yesPrint)
        printf("yesPrint is false");
    else
        printf("yesPrint is true");
    // The code looks good, it is wrong conceptually
    
    
    // insert code here...
    printf("Hello, World!\n");
    return 0;
}
