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
