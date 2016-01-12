//
//  main.m
//  Word Effects
//
//  Created by Kerry Toonen on 2016-01-11.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
//Declare Functions


int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        int menuSelection;
        while (menuSelection < 7)
        {
            
            char inputChars [255];
            
            printf("Input a string: \n");
            //limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            //print as a c string
            printf("Your string is %s\n", inputChars);
            
            //convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            //?!
            
            //print NSString object
            NSLog(@"Input was: %@", inputString);
            //Write the menu
            
            printf("What would you like to do with your string? (Please write a number and press [return]\n");
            printf("1: Print string with uppercase letters\n 2: Print string with lowercase letters\n 3:Make string a number\n 4:Canadianize string\n 5:Print _ instead of spaces\n 6:Reponse\n 7:Quit\n");
            
            
            scanf("%d", &menuSelection);
            char dummy;
            scanf("%c", &dummy);
            
            
            if (menuSelection==1){
                //Make the string uppercase
                NSString *uppercase = [inputString uppercaseString];
                NSLog(@"%@",uppercase); }
            
            else if (menuSelection==2) {
                
                //Make the string lowercase
                NSString *lowercase = [inputString lowercaseString];
                NSLog (@"%@" ,lowercase);}
            
            else if (menuSelection==3) {
                
                //Make the string a number
                NSInteger stringNumber = [inputString integerValue];
                NSLog(@"%ld", (long)stringNumber);}
            
            else if (menuSelection==4) {
                
                //Canadianize String
                NSString *Canadianize = [inputString stringByAppendingString:@"eh!"];
                NSLog(@"%@", Canadianize);}
            
            else if (menuSelection==5){
                
                //add spaces
                
                NSString *spaces = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"_"];
                NSLog(@"%@", spaces);}
            
            else if (menuSelection==6) {
                if ([inputString isEqualToString:@"?\n"]){
                    NSLog(@"I don't know");}
                
                else if ([inputString isEqualToString:@"!\n"]){
                    NSLog(@"Whoa, calm down");}
                else {
                    
                    NSLog(@"You didn't ask a question");
                }
            }
        }
    }return 0;
    
}
// The app will take in two pieces of data from the user:

// a number, to indicate which operation to do
//a string, to operate on
// Wrap the whole app in an infinite while loop, so users can do multiple operations.

//   Be sure to print out the menu of options at the start of each loop of the app.

// As you go through the steps of this assignment, be sure to commit regularly, and push your code to GitHub.

//255 unit long array of characters
//As you go through the assignment, use NSLog to print out the values, and memory addresses of the objects you create and modify. Methods on NSString result in new strings, rather than modifying strings in place. This is because NSString is immutable. You could use NSMutableString for some of these operations, but not all. In general NSMutableString tends to be used quite sparingly in Cocoa.

//Operations
//1. Uppercase
//Take whatever string the user inputs and MAKE IT LOUDER! Go have a look at the documentation or the header files for NSString, and look for methods that can help with this. Print the resulting string.

//2. Lowercase
//Take whatever text the user inputs and make it all lowercase. Print the resulting string.

//3. Numberize
//Take whatever text the user inputs, for example the string "10", and convert it to a number (e.g. the integer 10), if possible. Print the resulting number. Consider what inputs will give a valid number, and if you are able to tell if the conversion was successful or not. There is more than one way to do this conversion.

//4. Canadianize
//Take the user's input, and append ", eh?" to it. Print the resulting string.

//5. Respond
//If the user input ends with a question mark, answer "I don't know". If the input ends with an exclaimation point, respond with "Whoa, calm down!".

//6. De-Space-It
//Replace all spaces with "-". Print the resulting string.

//Stretch Goals
//Add a few more string manipulations. For example, word count, or punctuation removal.
//Convert everywhere you've used NSString to use NSMutableString if possible, and convert everywhere you've used NSMutableString to use NSString, if possible.

/*
 
 
 int main(int argc, const char * argv[]) {
 
 
 int one = 1;
 int two = 2;
 int three = 3;
 int four = 4;
 int five = 5;
 int six =6;
 
 
 
 switch (menuSelection) {
 case one:
 printf("letter %c is %c\n", letter, a);
 break;
 
 case two:
 printf("letter %c is %c\n", letter, b);
 break;
 
 case three:
 printf("letter %c is %c\n", letter, g);
 break;
 
 case four:
 printf("letter %c is not found\n", letter);
 break;
 
 case five:
 }
 
 return 0;
 }
 */