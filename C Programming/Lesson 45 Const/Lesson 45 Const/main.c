//
//  main.c
//  Lesson 45 Const
//
//  Created by Michele Galvagno on 06/12/21.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /* We can vary the value of a variable
    // 1.
    int num = 5;
    printf("%d\n", num);
    num = 9;
    printf("%d\n", num);
     */
    
    // 2.
    /*
    const int num = 5;
    printf("%d\n", num);
     */
    /*
    num = 9; // it will throw this error: "Cannot assign to variable 'num' with const-qualified type 'const int'"
    printf("%d\n", num);
     */
    
    /*
    // 3. Pointers
    int num2 = 5;
    int *pToNum = &num2; // pointer variables hold on to addresses of other variables. We're assigning the address of num to the variable pToNum
    *pToNum = 10;
    printf("%d\n", num2);
     */
    
    /*
    // 4. Constant pointers: the value stored in the address cannot be changed
    int num = 5;
    const int *pToNum = &num; // the address cannot be changed
    printf("%d\n", num);
    // *pToNum = 10; // Read-only variable is not assignable
    num = 11; // I can still change the value itself
    printf("%d\n", num);
     */
    
    // 5. Put the const after the star
    int num = 5;
    int num2 = 21;
    int * const pToNum = &num; // constant address cannot be changed
    printf("%d\n", num);
    // pToNum = &num2; // if we tell the pointer to now point to the address of num2 — Cannot assign to variable 'pToNum' with const-qualified type 'int *const'—
    printf("%d\n", num2);
    
    // 6. Double constant
    int num3 = 16;
    const int * const pToNum3 = &num3; // you cannot change neither the address nor the value
    
    return 0;
}
