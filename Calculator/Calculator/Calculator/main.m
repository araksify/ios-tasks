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

-(void) sum: (double) n1 over: (double) n2;
-(void) subscract: (double) n1 over: (double) n2;
-(void) multiply: (double) n1 over: (double) n2;
-(void) divide: (double) n1 over: (double) n2;

@end

@implementation Calculator
@synthesize n1, n2;

-(void) sum: (double) n1 over: (double) n2 {
        double sum = n1 + n2;
        return NSLog(@"\nSum is %f", sum);
    }
-(void) subscract:(double)n1 over:(double)n2 {
    double substract = n1 - n2;
    return NSLog(@"\nThe difference is %f", substract);
}
-(void) multiply:(double)n1 over:(double)n2 {
    double multiply = n1 * n2;
    return NSLog(@"\nThe product is %f", multiply);
}
-(void) divide:(double)n1 over:(double)n2 {
    double divide = n1 / n2;
    return NSLog(@"\nThe division is equal to %f", divide);
}

@end

int main(int argc, char* argv[]) {
    @autoreleasepool {
        Calculator *calculator = [[Calculator alloc] init];

        [calculator sum: 45.89 over: 78];
        [calculator subscract: 45.88 over: 76.12];
        [calculator multiply: 65 over: 87.67];
        [calculator divide: 65 over: 89];
        
    }
    return 0;
}
