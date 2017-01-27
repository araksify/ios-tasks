//
//  Calculator.m
//  KochanTasks
//
//  Created by Araks on 1/27/17.
//  Copyright © 2017 Araks. All rights reserved.
/** Ex 4 from chapter 6
 Write a program that acts as a simple printing calculator. The program should allow the user to type in expressions of following form: number operator
The program should recognize the following operators: + - * S E
The S operator tells the program to set the accumulator to the typed-in number, and
the E operator tells the program that execution is to end.
The arithmetic operations are performed on the contents of the accumulator, with the number that was keyed in acting as the second operand. The following is a sample run showing how the program should operate:
*/
#import <Foundation/Foundation.h>
@interface Calculator: NSObject;

-(double) setAccumulator: (double) value;

//Operators
-(double)add: (double) value;
-(double)subtract: (double) value;
-(double)multiply: (double) value;
-(char) SorE;

@end

@implementation Calculator
    double number;
char letter;

-(double) setAccumulator: (double) value {
    return number = value;
}
-(double) add: (double) value {
    return number += value;
}
-(double) subtract: (double) value {
    return number -= value;
}
-(double) multiply: (double) value {
    return number *= value;
}
-(char) SorE: (char) letter {
        if (letter == 'S' || (letter == 's'))
            return letter = 's';
        else if (letter == 'E' || (letter == 'e'))
            return letter = 'e';
        else
            return letter = 'o';
}
@end
