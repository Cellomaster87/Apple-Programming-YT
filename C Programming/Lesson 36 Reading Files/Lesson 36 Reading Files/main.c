//
//  main.c
//  Lesson 36 Reading Files
//
//  Created by Michele Galvagno on 29/11/21.
//

#include <stdio.h>
// 1.
#include <stdlib.h>

// 2. Location of the file: two levels up from the Unix Executable
#define kFileLocation "/Users/michelegalvagno/Developer/Apple-Programming-YT/C Programming/Lesson 36 Reading Files/Lesson 36 Reading Files/Data"

int main(int argc, const char * argv[]) {
    // 3. file pointer, saves the address of where the document is located
    FILE *dataFile;
    
    // 4. create a character to store what we are about to read
    char c;
    
    // 5. we need to get the address to open the file and then we have to close it; we use "r" to read the file
    // Failsafe mechanism in place if our file doesn't exist
    if ((dataFile = fopen(kFileLocation, "r")) == NULL) {
        printf("FAIL\n");
        exit(1);
    }
    
    // 6. as long as the read character is not the end of the file, print it
    while ((c = fgetc(dataFile)) != EOF) {
        printf("%c", c);
    }
    
    // 7. close the file
    fclose(dataFile);
    
    return 0;
}
