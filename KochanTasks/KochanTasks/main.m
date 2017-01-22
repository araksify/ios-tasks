//
//  main.m
//  KochanTasks
//
//  Created by Araks on 1/21/17.
//  Copyright © 2017 Araks. All rights reserved.
//Define a class called XYPoint that will hold a Cartesian coordinate (x, y), where x and y are integers. Define methods to individually set the x and y coordinates of a point and retrieve their values. Write an Objective-C program to implement your new class and test it.

#import <Foundation/Foundation.h>
#import "Accumulator.h"
#import "Complex.h"
#import "Rectangle.h"

@interface XYPoint : NSObject

-(void) setX: (int) x;
-(void) setY: (int) y;
-(int) xaxisvalue;
-(int) yaxisvalue;

@end

@implementation XYPoint
int xaxis, yaxis;

-(void) setX: (int) x {
    xaxis = x;
}
-(void) setY: (int) y {
    yaxis = y;
}
-(int) xaxisvalue {
    return xaxis;
}
-(int) yaxisvalue {
    return yaxis;
}

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        XYPoint *myCoordinates = [[XYPoint alloc] init];
        
        [myCoordinates setX: 6];
        [myCoordinates setY: 10];
        
        NSLog(@"\nMY coordinates are %i, %i", [myCoordinates xaxisvalue], [myCoordinates yaxisvalue]);
        
      
        int integerVar = 100;
        float floatVar = 331.342;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        
        
        NSLog(@"\n-------------");
        NSLog(@"\nIntegerVar = %i", integerVar);
        NSLog(@"\nFloatVard = %f", floatVar);
        NSLog(@"\nDoubleVar = %f", doubleVar);
        NSLog(@"\nDoubleVard = %g", doubleVar);
        NSLog(@"\ncharVar = %c", charVar);
        
        int A = 4;
        int B = 3;
        int C = 9;

        NSLog(@"\nA + B * C = %i", A + B * C);

        
//Accumulator
        Accumulator *myTool = [[Accumulator alloc] init];
        
        [myTool setAccumulator:(23.5)];
        [myTool add:10];
        [myTool subtract:-30];
        [myTool multiply:3];
        [myTool divide:33.333];
        [myTool accumulator];
        
        NSLog(@"\nACCUMULATOR is %f", [myTool accumulator] );

//Converter. Excercise 4.2
        int F = 27;
        int Celcius;
        Celcius = (F - 32) / 1.8;

        NSLog(@"\nC = %i", Celcius);
        
//Expected value is 'd'. ex. 4.3
        char c, d;
        c = 'd';
        d = c;
        NSLog (@"d = %c", d);
        
//Excercise 4.4
        //Write a program to evaluate the polynomial shown here. (To calculate the exponents, just do straight multiplication; there is no exponentiation operator in Objective-C.)
        double ixs = 2.55, value;
        value = 3 * pow(ixs, 3) - 5 * pow(ixs, 2) + 6;
        NSLog(@"\nValue when X = 2.55 will be %f", value);
//Excercise 4.5
        // Write a program that evaluates the following expression and displays the results. (Remember to use exponential format to display the result.) (3.31 x 10-8 + 2.01 x 10-7) / (7.16 x 10-6 + 2.01 x 10-8)
        double expressionValue = (3.31 * pow(10, -8) + 2.01 * pow(10, -7)) / (7.16 * pow(10, -6) + 2.01 * pow(10, -8));
        NSLog(@"\nThe value of (3.31 x 10-8 + 2.01 x 10-7) / (7.16 x 10-6 + 2.01 x 10-8) is equal to %f", expressionValue);
//Ex 4.6
        Complex *complex = [[Complex alloc] init];
        [complex setReal: 34.5];
        [complex setImaginary: 76.343];
        
        [complex print];
//Ex 4.7
        Rectangle *rectangle = [[Rectangle alloc] init];
            [rectangle setWidth: 23];
            [rectangle setHeight: 38];
        
        NSLog(@"\nThe AREA of Rectangle is %i", [rectangle area]);
        NSLog(@"\nThe PERMITER of Rectangle is %i", [rectangle perimter]);
    
    //ex 4.8
        [myTool clear];
        [myTool add: -10];
    NSLog(@"\nACCUMULATOR AMOUNT IS NOW %f", [myTool accumulator]);
    
    //ex. 4.9
        [myTool clear];
        [myTool setAccumulator: 7.8];
        [myTool reciprocal];
        [myTool xSquared];
        [myTool changeSign];

    NSLog(@"\nACCUMULATOR IS NOW %f", [myTool accumulator]);
    
    //ex. 4.10
        [myTool memoryClear]; // clears memory
        [myTool memoryStore]; // makes memory value get accumulator value. -0.016437
        [myTool memoryAdd:4]; //adds prev value to memory, getting 3.98..
        [myTool memorySubtract:3]; //subtract 3 from prev value, getting 0.983563
        [myTool memoryRecall]; //will make accumulator equal 0.983563
        NSLog(@"\nMemory will be %f", [myTool accumulator]);

    
    
    }
    return 0;
}
