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

-(double) sum: (double) n1 over: (double) n2;
-(double) substract: (double) n1 over: (double) n2;
-(double) multiply: (double) n1 over: (double) n2;
-(double) divide: (double) n1 over: (double) n2;

@end

@implementation Calculator

-(double) sum:(double) n1 over: (double) n2 {
        double sum = n1 + n2;
        return sum;
    }
-(double) substract:(double)n1 over:(double)n2 {
    double substract = n1 - n2;
    return substract;
}
-(double) multiply:(double)n1 over:(double)n2 {
    double multiply = n1 * n2;
    return multiply;
}
-(double) divide:(double)n1 over:(double)n2 {
    double divide = n1 / n2;
    return divide;
}

@end

int main(int argc, char* argv[]) {
    @autoreleasepool {
        Calculator *calculator = [[Calculator alloc] init];

        NSLog(@"\nSum is %f", [calculator sum:(16.8) over: (8.2)]);
        NSLog(@"\nThe difference is %f", [calculator substract:(16.8) over: (8.2)]);
        NSLog(@"\nProduct is %f", [calculator multiply:(16.8) over: (8.2)]);
        NSLog(@"\nDivision is %f", [calculator divide:(16.8) over: (8.2)]);
        
    }
    return 0;
}
