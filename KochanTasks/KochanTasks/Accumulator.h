//
//  Accumulator.m
//  KochanTasks
//
//  Created by Araks on 1/21/17.
//  Copyright © 2017 Araks. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Accumulator: NSObject

    -(void) setAccumulator: (double) value;
    -(void) clear;
    -(double) accumulator;

    -(double) add: (double) value;
    -(double) subtract: (double) value;
    -(double) multiply: (double) value;
    -(double) divide: (double) value;

//4.9 Excercise Methods
    -(double) changeSign; // change sign of accumulator
    -(double) reciprocal; // 1/accumulator
    -(double) xSquared; // accumulator squared

//4.10 Excercise Methods

-(double) memoryClear; // clear memory
-(double) memoryStore; // set memory to accumulator
-(double) memoryRecall;  // set accumulator to memory
-(double) memoryAdd: (double) value; // add value into memory
-(double) memorySubtract: (double) value; // subtract value from memory

@end

@implementation Accumulator
{
    double accumulator;
    double memory;
}
    -(void) setAccumulator: (double) value {
        accumulator = value;
    }
    -(void) clear {
        accumulator = 0;
    }

    -(double) accumulator {
        return accumulator;
    }

    -(double) add: (double) value {
        return accumulator += value;
    }
    -(double) subtract:(double)value {
       return accumulator -= value;
    }
    -(double) multiply:(double)value {
        return accumulator *= value;
    }
    -(double) divide:(double)value {
        return accumulator /= value;
        }
//4.9 Excercise Methods

-(double) changeSign {
    return accumulator = - accumulator;
} // change sign of accumulator

-(double) reciprocal{
    return accumulator = 1/accumulator;
} // 1/accumulator

-(double) xSquared {
    return accumulator = pow(accumulator, 2);
} // accumulator squared

//4.10 Excercise Methods
    -(double) memoryClear {
        return memory = 0;
    }
    -(double) memoryStore {
        return memory = accumulator;
    }
    -(double) memoryRecall {
        return accumulator = memory;
    }
    -(double) memoryAdd: (double) value {
        return memory += value;
    }
    -(double) memorySubtract: (double) value {
        return memory -= value;
    }
@end
