//
//  main.c
//  Test 2 (1-7)
//
//  Created by Michele Galvagno on 31/05/21.
//

#include <stdio.h>
#4
int AddTogether(int firstNum, int secondNum);
/*
 Also possible:
 void AddTogether(void);
 
 void AddTogether(void) {
    int num1, num2;
    num1 = 5;
    num2 = 6;
    printf("%d", num1 + num2);
 */

int main(int argc, const char * argv[]) {
#1
    int num1, num2, sum;
    num1 = 8;
    num2 = 4;
    sum = num1 + num2;
    
#2
    printf("%d plus %d is equal to %d!\n", num1, num2, sum);
    
#3
    int myNum = 12;
    
    if (myNum >= 5) {
        printf("My number is greater or equal than five!\n");
    } else {
        printf("My number is smaller than five...\n");
    }
    
#4
    printf("The sum of 3 and 4 is %d\n", AddTogether(3, 4));
    
    return 0;
}

#4
int AddTogether(int firstNum, int secondNum) {
    int sum;
    sum = firstNum + secondNum;
    
    return sum;
}
