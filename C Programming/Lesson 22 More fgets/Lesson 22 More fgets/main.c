//
//  main.c
//  Lesson 22 More fgets
//
//  Created by Michele Galvagno on 13/11/21.
//

/* We add a period after %s. It prints it on the next line, because the return character is also inserted in the array before the "null" character. To solve we need to find the total length of the array.
 */

#include <stdio.h>
/// 1.
#include <string.h>

#define myMax 50

int main(int argc, const char * argv[]) {
    char myArray[myMax];
    /// 2.
    int length = 0;
    
    printf("Please enter your full name: ");
    fgets(myArray, myMax, stdin);
    
    /// 3. This is a pointer variable.
    length = strlen(&myArray[0]); // or myArray directly
    
    /// 4. We need to get rid of that return key
    myArray[length - 1] = 0;
    // printf("%d\n", length);
    printf("Welcome %s.\n", myArray);
    return 0;
}
