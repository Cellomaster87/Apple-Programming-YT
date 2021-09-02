//
//  main.c
//  Test 2-2
//
//  Created by Michele Galvagno on 02/09/21.
//

#include <stdio.h>

int initialiseAndSum(int i, int j, int numbers[30]);
int main(int argc, const char * argv[]) {
// MARK: #1 - Create a program that uses a "for" loop to add numbers 1-30 together and then print what they all add up to (the total).
    /*
    int numbers[30];
    int sum = 0, i = 0, j = 0;
     */
    
    /*
    while (i < 30) {
        numbers[i] = i + 1;
        i++;
        printf("Numbers[%d] has been initialized with %d\n", i - 1, i); // test
    }
    
    for (j = 0; j < 30; j++) {
        sum += numbers[j];
    }
    
    printf("Sum is %d!\n", sum); // I get 465
     */
    
// MARK: #2 - Continue with #1 but now put your while loop into a separate function and return the total value to the main function, then print it from the main. (Don't use pointers, use function returns)
    int numbers[30];
    int sum = initialiseAndSum(0, 0, numbers);
    
    printf("Sum is %d!\n", sum);
    
    return 0;
    
// MARK: #3 - Do the same thing as #2, but instead of using a function return, use a pointer to print the value back from the main. (The pointer should go in the function parameters)
    /*
     void getTotal(int *myPointer);
     
     int main (int argc, const char *argv[]) {
        int total = 0;
        getTotal(&total); // gives `myPointer` the address of total, same as `myPointer = &total`
        print(%d, total);
     
        return 0;
     }
     
     void getTotal(int *myPointer) {
        for (int num = 1; num <= 30; num++)
            *myPointer += num;
     }
     */
}

int initialiseAndSum(int i, int j, int numbers[30]) {
    int sum = 0;
    while (i < 30) {
        numbers[i] = i + 1;
        i++;
        printf("Numbers[%d] has been initialized with %d\n", i - 1, i); // test
    }
    
    for (j = 0; j < 30; j++) {
        sum += numbers[j];
    }
    
    return sum;
}
