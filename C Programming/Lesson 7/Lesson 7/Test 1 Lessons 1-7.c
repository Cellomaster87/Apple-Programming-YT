//
//  Test 1 Lessons 1-7.c
//  Lesson 7
//
//  Created by Michele Galvagno on 31/05/21.
//

#include <stdio.h>

// MARK: - Test 1
int main2(int argc, const char * argv[]) {
#1
    int num1; // the error was in the capital letter of the integer type
    num1 = 14;
    
#2
    printf("Hello World!"); // quotes were missing
    
#3
    int myInt = 0;
    myInt += 5; // the + and = were inverted
    
#4
    printf("Hello, World"); // the f was detached from print
    
#5
    myInt = 45;
    int secondInt;
    secondInt = myInt; // secondInt was not declared
    
#6
    myInt = myInt + 3; // the assignment operator doesn't work that way, this is one of the solution, another is myInt += 3;
    
#7
    if (myInt == 5) { // the 5 was assigned, not compared to
        printf("Hello, World!");
    }
    
#8
    int num2, num3; // the comma was missing
    
    return 0;
}

