//
//  main.c
//  Lesson 6
//
//  Created by Michele Galvagno on 23/05/21.
//

#include <stdio.h>

// MARK: - Mathematical operators
// + - * / %
int main(int argc, const char * argv[]) {
    double num1 = 1;
    double num2 = 2;
    double answer; // this is to store the result
    
    // answer = num1 + num2;
    // answer = num1 - num2;
    // answer = num1 * num2;
    answer = num1 / num2;
    // answer = num1 % num2; // this cannot be used with doubles
    
    printf("%f\n", answer);
    return 0;
}
