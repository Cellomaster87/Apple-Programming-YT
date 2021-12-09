//
//  main.c
//  Lesson 47 Recursion
//
//  Created by Michele Galvagno on 09/12/21.
//

#include <stdio.h>

// Factorial: 4! = 4 * 3 * 2 * 1
int factorial(int n) {
    int value = 1;
    while (n > 1) {
        value *= n;
        n--;
    }
    return value;
}

int recursiveFactorial(int n) {
    if (n <= 1) return 1; // safety check always and base case to exit the recursion
    return n * factorial(n - 1);
}

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

int main(int argc, const char * argv[]) {
    printf("%d\n", recursiveFactorial(5));
    printInt(123);
    
    return 0;
}
