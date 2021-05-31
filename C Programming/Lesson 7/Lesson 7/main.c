//
//  main.c
//  Lesson 7
//
//  Created by Michele Galvagno on 31/05/21.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int num1, num2;
    num1 = 10;
    num2 = 5;
    
    if (num2 < 5) {
        printf("This is true\n");
    }
    else if (num2 == 5) {
        printf("This is equal to\n");
    }
    else {
        printf("This is false\n");
    }
    
    return 0;
}
