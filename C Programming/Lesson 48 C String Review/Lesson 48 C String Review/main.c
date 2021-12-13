//
//  main.c
//  Lesson 48 C String Review
//
//  Created by Michele Galvagno on 13/12/21.
//

#include <stdio.h>
#include <stdarg.h>

void printInt(int n) {
    // putchar('0' + n); // we can handle only numbers from 0 to 9
    if (n >= 10) {
        int lastDigit = n % 10; // it gets the remainder
        printInt(n / 10); // we get to the previous digit
        putchar('0' + lastDigit);
    } else {
        putchar('0' + n);
    }
}

void basicPrint(const char *str, ...) { // the characters cannot be altered
    va_list args;
    va_start(args, str);
    
    while (*str != '\0') {
        if (*str == '%') { //*str = the value stored in the address
            str++;
            if (*str == 'd' || *str == 'i') {
                int integer = va_arg(args, int);
                printInt(integer);
            }
        } else {
            putchar(*str);
        }
        str++;
    }
    
    va_end(args);
}

int main(int argc, const char * argv[]) {
    /*
     What does a character mean in C?
     We define some pointer that points to the first memory address in memory of the first character of the string.
     Every string ends with a \0 character.
     */
    char *str = "I love teching you guys how to program!\n";
    
    /*
    for (int i = 0; i < 25; i++) {
        printf("%p: %c\n", str, *str); // %p = memory address - * dereference operator (?)
        str++;
    }
     */
    
    while (*str != '\0') {
        putchar(*str);
        str++;
    }
    
    basicPrint("I love this series, don't you! %d%i\n", 20, 13);
    
    return 0;
}

