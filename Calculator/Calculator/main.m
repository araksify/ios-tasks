//
//  main.m
//  Calculator
//
//  Created by Araks on 1/18/17.
//  Copyright © 2017 Araks. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Calculator: NSObject
@property int n1, n2;

-(int) sumInt: (int) n1 over: (int) n2;
-(int) substractInt: (int) n1 over: (int) n2;
-(int) multiplyInt: (int) n1 over: (int) n2;
-(int) divideInt: (int) n1 over: (int) n2;

-(float) sumFloat: (int) n1 over: (int) n2;
-(float) substractFloat: (int) n1 over: (int) n2;
-(float) multiplyFloat: (int) n1 over: (int) n2;
-(float) divideFloat: (int) n1 over: (int) n2;

-(double) sumDouble: (int) n1 over: (int) n2;
-(double) substractDouble: (int) n1 over: (int) n2;
-(double) multiplyDouble: (int) n1 over: (int) n2;
-(double) divideDouble: (int) n1 over: (int) n2;

-(long) sumLong: (int) n1 over: (int) n2;
-(long) substractLong: (int) n1 over: (int) n2;
-(long) multiplyLong: (int) n1 over: (int) n2;
-(long) divideLong: (int) n1 over: (int) n2;

@end

@implementation Calculator
//int methods
    -(int) sumInt:(int) n1 over: (int) n2 {
            int sum = n1 + n2;
            return sum;
        }
    -(int) substractInt:(int)n1 over:(int)n2 {
        int substract = n1 - n2;
        return substract;
    }
    -(int) multiplyInt:(int)n1 over:(int)n2 {
        int multiply = n1 * n2;
        return multiply;
    }
    -(int) divideInt:(int)n1 over:(int)n2 {
        if (n2 == 0) {
            return 0;
        } else {
        //int divide = n1 / n2;
        return 1;
        }
    }
//Float methods
    -(float) sumFloat:(int) n1 over: (int) n2 {
        float sum = n1 + n2;
        return sum;
    }
    -(float) substractFloat:(int)n1 over:(int)n2 {
        float substract = n1 - n2;
        return substract;
    }
    -(float) multiplyFloat:(int)n1 over:(int)n2 {
        float multiply = n1 * n2;
        return multiply;
    }
    -(float) divideFloat:(int)n1 over:(int)n2 {
        float divide = n1 / n2;
        return divide;
    }
//double methods
    -(double) sumDouble:(int) n1 over: (int) n2 {
        double sum = n1 + n2;
        return sum;
    }
    -(double) substractDouble:(int)n1 over:(int)n2 {
        double substract = n1 - n2;
        return substract;
    }
    -(double) multiplyDouble:(int)n1 over:(int)n2 {
        double multiply = n1 * n2;
        return multiply;
    }
    -(double) divideDouble:(int)n1 over:(int)n2 {
        double divide = n1 / n2;
        return divide;
    }
//long methods
    -(long) sumLong:(int) n1 over: (int) n2 {
        long sum = n1 + n2;
        return sum;
    }
    -(long) substractLong:(int)n1 over:(int)n2 {
        long substract = n1 - n2;
        return substract;
    }
    -(long) multiplyLong:(int)n1 over:(int)n2 {
        long multiply = n1 * n2;
        return multiply;
    }
    -(long) divideLong:(int)n1 over:(int)n2 {
        long divide = n1 / n2;
        return divide;
    }
@end

int main(int argc, char* argv[]) {
    @autoreleasepool {
        Calculator *calculator = [[Calculator alloc] init];

        NSLog(@"\nSum is %i", [calculator sumInt:16.8 over: 8.2]);
        NSLog(@"\nThe difference is %F", [calculator substractFloat:16.8 over: 8.2]);
        NSLog(@"\nProduct is %f", [calculator multiplyDouble:16.8 over: 8.2]);
        if(calculator.n2 == 1) {
        NSLog(@"\nDivision is %ld", [calculator divideLong:16.8 over: 0]);
        } else {
        NSLog(@"\nAre you kidding??! You can't divide number to zero>_<!");
        }
    }
    return 0;
}
