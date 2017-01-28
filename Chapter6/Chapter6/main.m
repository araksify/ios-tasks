//
//  main.m
//  KochanTasks
//
//  Created by Araks on 1/27/17.
//  Copyright © 2017 Araks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Calculator *calculate = [[Calculator alloc] init];
        
        char operator;
        double value;
        while (operator != 'e' || operator != 'E') {
            NSLog(@"Insert operator, +, -, *, /, S or E");
            scanf("%lf %c", &value, &operator);
            if(operator == '+') {
                [calculate add: value];
            } else if (operator == '-') {
                [calculate subtract: value];
            } else if (operator == '*') {
                [calculate multiply: value];
            } else if (operator == '/') {
                [calculate divide: value];
            } else if (operator == 's' || operator == 'S') {
                NSLog(@"\nStart Program");
            } else if(operator == 'e' || operator == 'e') {
                NSLog(@"nEnd of program");
                NSLog(@"Accumulator is %lf", [calculate accumulator]);
                break;
            } else {
                NSLog(@"\nYour character is not expected.");
            }
            NSLog(@"\nAccumulator is %lf", [calculate accumulator]);
        }
    //Excercise 6.5. Reverse the digits of an integer typed in from terminal. Consider that it might be negative number, so - sign will be logged at the end.
        int typedNumber, rightDigit;
        
        NSLog(@"Please type a valid integer number you want to reverse.");
        scanf("%i", &typedNumber);
        
        while (typedNumber != 0) {
            if (typedNumber < 0)
                typedNumber = -typedNumber;
            rightDigit = typedNumber % 10;
            NSLog(@"%i", rightDigit);
            typedNumber /= 10;
        }
        NSLog(@"-");
    //Write a program that takes an integer keyed in from the terminal and extracts and displays each digit of the integer in English. (Remember to display zero if the user types in just 0.)
        int typenDigit, leftDigit, power;
        NSString *numEnglish;
        NSLog(@"Please type a valid integer number to convert it in English.");
        scanf("%i", &typenDigit);
        
        NSString *numToString;
        numToString = [NSString stringWithFormat:@"%d", typenDigit];
        int len = (int)[numToString length];
        
        do {
            power = pow(10, (len - 1)); // asenq 4000i depqum 10-i 3, klini 1000
            leftDigit = typenDigit / power; // 4000 / 1000 = 4
            switch (leftDigit) {
                case 1:
                    numEnglish = (@"one");
                    break;
                case 2:
                    numEnglish = (@"two");
                    break;
                case 3:
                    numEnglish = (@"three");
                    break;
                case 4:
                    numEnglish = (@"four");
                    break;
                case 5:
                    numEnglish = (@"five");
                    break;
                case 6:
                    numEnglish = (@"six");
                    break;
                case 7:
                    numEnglish = (@"seven");
                    break;
                case 8:
                    numEnglish = (@"eight");
                    break;
                case 9:
                    numEnglish = (@"nine");
                    break;
                case 0:
                    numEnglish = (@"zero");
                    break;
                default:
                    numEnglish = (@"oye this is wrong input!");
                    break;
            }
            typenDigit = typenDigit - leftDigit * power;
            NSLog(@"%@", numEnglish);
            len--;
        } while (len != 0);
        

    }
    return 0;
}
