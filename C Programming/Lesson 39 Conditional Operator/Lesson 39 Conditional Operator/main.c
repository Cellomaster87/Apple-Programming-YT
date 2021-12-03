//
//  main.c
//  Lesson 39 Conditional Operator
//
//  Created by Michele Galvagno on 03/12/21.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // 1. the conditional operator is what in Swift will be the ternary operator
    int cars = 20;
    // 4. we want a maximum of 15 cars
    cars = (cars > 15) ? 15 : cars;
    
    // 2.
    printf("We have %d car%s in the lot\n", cars, (cars == 1) ? "" : "s");
    // 3. change the value of cars to 1
    
    return 0;
}
