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
    }
    return 0;
}
