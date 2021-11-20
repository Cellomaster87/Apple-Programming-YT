//
//  main.c
//  Lesson 28 Do while loop
//
//  Created by Michele Galvagno on 20/11/21.
//

/* Very similar to the while loop, just that you execute your code at least once.
 You run the code and then check the conditions at the end
 */

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // 1. create an integer
    int num = 5;
    
    // 2. create the do-while loop
    do {
        printf("Went through loop\n");
        num++;
    } while (num < 3); // with a while loop this would not execute even once
    
    return 0;
}
