//
//  main.c
//  Lesson 26 Global Variables
//
//  Created by Michele Galvagno on 20/11/21.
//

// Create a variable and make it available everywhere in your program.
// 1. Create a function and a variable before all other code
void PrintNum(void);

int num = 1;

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // 2. print the number and increase it by 1. Then call it
    printf("%d\n", num);
    num++;
    PrintNum();
    
    return 0;
}

// 3. define the function
void PrintNum() {
    printf("%d\n", num);
}

/* 4. they are accessible to everything and when you have big programs
 you do not know where the problem is coming from.
 With global variables the issue can come from anywhere.
 */
