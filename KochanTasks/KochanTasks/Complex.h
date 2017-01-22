//
//  Complex.m
//  KochanTasks
//
//  Created by Araks on 1/22/17.
//  Copyright © 2017 Araks. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Complex: NSObject
    -(void) setReal: (double) a;
    -(void) setImaginary: (double) b;
    -(void) print;
    -(double) real;
    -(double) imaginary;
@end

@implementation Complex

double r, i;

    -(void) setReal: (double) a {
        r = a;
    }
    -(void) setImaginary: (double) b {
        i = b;
    }
    -(void) print {
        NSLog(@"\na + bi = %f + %fi", r, i);
    }
    -(double) real {
        return r;
    }
    -(double) imaginary {
        return i;
    }

@end
