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
#import "Fraction.h"


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

//EX. 5.1.
        //Write a program to generate and display a table of n and n2, for integer values of n
            //ranging from 1 through 10. Be sure to print the appropriate column headings.
        
        int nFive;
        NSLog(@"n       n2");
        for(nFive = 1; nFive <= 10; nFive++) {
            NSLog(@"%2i     %3i", nFive, nFive * nFive);
//EX. 5.2
            int triangularNumber, nFiveTwo;
            
            NSLog(@"Number      TriangularValue");
            for(nFiveTwo = 5; nFiveTwo <= 50; nFiveTwo+=5) {
                triangularNumber = nFiveTwo * (nFiveTwo + 1) / 2;
                NSLog(@"%-3i         %3i", nFiveTwo, triangularNumber);
            }
//EX. 5.3 Print 10 Factorial.
            int factorial = 1;
            
            for(int i = 5; i >= 1; i--) {
                factorial = i * factorial;
            }
            NSLog(@"Factorial of 10 = %i", factorial);
        }
//EX 5.4. Checked on previous example.
//EX 5.5 Program 5.5 allows the user to type in only five different numbers. Modify that program so that the user can type in the number of triangular numbers to be calculated.
      //  int counter, number;
       // int triangular = 0;
        
       // NSLog(@"how many times do you want to repeat?");
      //  scanf("%i", &counter);
       // for(int i = 1; i <= counter; i++) {
        //    NSLog(@"What is the number to calculate triangular");
           // scanf("%i", &number);
           //
           // for(int i = 1; i <= number; i++) {
           //     triangular += i;
            //}
          //  NSLog(@"Triangular is %i", triangular);
       // }
//EX 5.6 Convert book for examples to while
        int n, triangularNumber;
        n = 1;
        triangularNumber = 0;
        while (n <= 200) {
            triangularNumber += n;
            n = n + 1;
            NSLog(@"tri %i", triangularNumber);
        }
        NSLog (@"The 200th triangular number is %i", triangularNumber);
    
//EX 5.7. What would happen if you were to type a negative number into Program 5.8? Try it and see.
    /* int number, right_digit;
    NSLog (@"Enter your number.");
        scanf ("%i", &number);
    while ( number != 0 ) {
        right_digit = number % 10;
        NSLog (@"%i", right_digit);
        number /= 10;
    } */
//EX 5.8. Write a program that calculates the sum of the digits of an integer. For example, the sum of the digits of the number 2155 is 2 + 1 + 5 + 5, or 13. The program should accept any arbitrary integer the user types.
       /* int myNum;
        int rightDigit;
        int mySum = 0;
        NSLog(@"Add your number");
        scanf("%i", &myNum);
        
        while(myNum != 0) {
            rightDigit = myNum % 10;
            mySum += rightDigit;
            myNum /= 10;
        }
        NSLog(@"Sum of digits is %i", mySum); */

//----
//CHAPTER 6 EXCERCISES
//----
  //1. Write a program that asks user to enter 2 integer values. Test these 2 numbers to see whether the first is evenly divisible by the second and then display an appropriate message.
       /* int value1, value2;
        scanf("%i %i", &value1, &value2);
        if(value1 % value2 ==0)
            NSLog(@"%i is evenly divisible by %i", value1, value2);
        else
            NSLog(@"%i is not evenly disivisble by %i", value1, value2);
        */
// 2. Program 6.8A displays the value in the accumulator even if an invalid operator is entered or division by zero is attempted. Fix that problem.
//        double tiv1, tiv2;
//        char operator;
//        NSLog(@"\nEnter value1, operator and value2");
//        scanf("%lf %c %lf", &tiv1, &operator, &tiv2);
//        Accumulator *newCalculator = [[Accumulator alloc] init];
//        [newCalculator setAccumulator: tiv1];
//        if (operator == '+')
//            [newCalculator add: tiv2];
//         else if (operator == '-')
//            [newCalculator subtract: tiv2];
//         else if (operator == '/') {
//             if(tiv2 == 0) {
//                 NSLog(@"\nYou can not divide number to 0");
//                 [newCalculator divide: NAN];
//             } else {
//                 [newCalculator divide: tiv2];
//             }
//         } else if (operator == '*' || operator == 'x')
//             [newCalculator multiply: tiv2];
        
//        NSLog(@"\nThe accumulator is %f", [newCalculator accumulator]);
//3. Modify the print method from the Fraction class so that whole numbers are displayed as such (so the fraction 5/1 should display as simply 5). Also modify the method to display fractions with a numerator of 0 as simply zero.
        Fraction *fraction = [[Fraction alloc] init];
        
        [fraction setNumerator: 89];
        [fraction setDenominator: 9];
        if([fraction isZero] == false)
            NSLog(@"Denominator can't be 0");
        else
            NSLog(@"Numerator/Denominator = %i", [fraction numOverDenom]);
    }
    return 0;
}
