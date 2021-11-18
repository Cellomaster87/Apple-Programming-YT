//
//  main.c
//  Lesson 25 Math Functions
//
//  Created by Michele Galvagno on 19/11/21.
//

#include <stdio.h>
// 1. add header file
#include <math.h> // check C standard library, then math.h file

int main(int argc, const char * argv[]) {
    // 2. 4 to the power of 2. You can also use the (int) typecasting
    printf("%f\n", pow(4, 2));
    
    // 3. fabs = floating-point absolute value
    printf("%f\n", fabs(-4.2));
    
    // 4. square root
    printf("%f\n", sqrt(16));
    
    // 5. PI
    printf("%f\n", M_PI);
    
    
    return 0;
}
