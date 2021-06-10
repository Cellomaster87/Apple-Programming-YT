//
//  main.c
//  Lesson 9
//
//  Created by Michele Galvagno on 10/06/21.
//

// MARK: - Lesson 9: while loops
#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i; // incrementer
    i = 1;
    
    // we try to print whether a number is even or od
    while (i <= 10) {
        printf("%d is ", i);
        if ((i % 2) == 0) {
            printf("even\n");
        }
        else {
            printf("odd\n");
        }
        i++; // increments by 1!
            // also possible as `i--` (decrease by one); `i += j` adds j to the value of `i`
    }
    
    return 0;
}
