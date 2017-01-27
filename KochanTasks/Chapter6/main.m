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
        
        [calculate setAccumulator: 8];
        NSLog(@"\n Number is %lf", [calculate add: 9]);
        
        
    }
    return 0;
}
