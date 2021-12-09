//
//  main.c
//  Lesson 46 Variadic Functions
//
//  Created by Michele Galvagno on 09/12/21.
//

#include <stdio.h>
// 3. contains macros that deals with different argument lists
#include <stdarg.h>

// 2. Pass a bunch a number, then format it for us
void printIntList(int count, ...) {
    // the count parameter is to know when to stop
    va_list list; // currently empty (variable argument)
    va_start(list, count); // you are going to start the list right after the count variable
    for (int i = 1; i <= count; i++) {
        int num = va_arg(list, int); // asks for the list to look at and the type that we expect
        printf("%d: %d\n", i, num);
    }
    va_end(list); // nullifies the list that was created
}

void printUntilZero(int first, ...) {
    va_list list;
    va_start(list, first);
    int num = first;
    while (num != 0) {
        printf("%d\n", num);
        num = va_arg(list, int);
    }
    va_end(list);
}

int main(int argc, const char * argv[]) {
    // Variable argument lists
    // The printf function allows us to pass as many parameters as we want, which is useful.
    printf("%d, %d\n", 8, 2);
    
    printIntList(4, 6, 2, 1, 7); // the first number is the amount of items we are going to pass in the list; then we pass the parameters.
    
    printUntilZero(9, 2, 1, 5, 2, 0);
    
    return 0;
}
