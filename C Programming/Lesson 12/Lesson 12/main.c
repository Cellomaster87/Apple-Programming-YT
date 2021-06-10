//
//  main.c
//  Lesson 12
//
//  Created by Michele Galvagno on 10/06/21.
//

// MARK: - Function returns
#include <stdio.h>

// Function prototype
int Square(int num1);

int main(int argc, const char * argv[]) {
//    int sum;
//    sum = Square(4);
//    printf("4 squared is equal to %d\n", sum);
    
    printf("4 squared is equal to %d\n", Square(4));
    
    return 0;
}

// Function definition
int Square(int num1) {
    return num1 * num1;
    /*
     int sum;
     sum = num1 * num1;
     return sum;
     */
}
