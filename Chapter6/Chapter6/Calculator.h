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

-(void) setAccumulator: (double) value;

//Operators
-(double)add: (double) value;
-(double)subtract: (double) value;
-(double)multiply: (double) value;
-(double)divide: (double) value;
-(double)accumulator;
@end

@implementation Calculator
double number;

-(void) setAccumulator: (double) value {
    number = value;
}
-(double) add: (double) value {
    number += value;
    return number;
}
-(double) subtract: (double) value {
    number -= value;
    return number;
}
-(double) multiply: (double) value {
    number *= value;
    return number;
}
-(double) divide: (double) value {
    if(value == 0)
        number = NAN;
    else
        number /= value;
    return number;
}
-(double) accumulator {
    return number;
}
@end
