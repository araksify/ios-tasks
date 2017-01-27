//
//  Fraction.m
//  KochanTasks
//
//  Created by Araks on 1/27/17.
//  Copyright © 2017 Araks. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Fraction: NSObject

-(int) setNumerator: (int) num;
-(int) setDenominator: (int) denom;
-(bool) isZero;
-(int) numOverDenom;
@end

@implementation Fraction
    double numerator, denominator;
    -(int) setNumerator:(int)num {
        return numerator = num;
    }
    -(int) setDenominator:(int)denom{
        return denominator = denom;
    }

    -(bool) isZero {
        if (denominator == 0)
            return false;
        else
        return true;
    }
    -(int) numOverDenom {
        return numerator / denominator;
    }

@end
