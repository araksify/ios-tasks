#import <Foundation/Foundation.h>

@interface Calculator: NSObject

-(int) sumInt: (int) n1 over: (int) n2;
-(int) substractInt: (int) n1 over: (int) n2;
-(int) multiplyInt: (int) n1 over: (int) n2;
-(int) divideInt: (int) n1 over: (int) n2;

-(double) sumDouble: (double) n1 over: (double) n2;
-(double) substractDouble: (double) n1 over: (double) n2;
-(double) multiplyDouble: (double) n1 over: (double) n2;
-(double) divideDouble: (double) n1 over: (double) n2;

@end

@implementation Calculator

-(int) sumInt: (int) n1 over: (int) n2 {
    return n1 + n2;
}
-(int) substractInt: (int) n1 over: (int) n2 {
    return n1 - n2;
}
-(int) multiplyInt: (int) n1 over: (int) n2 {
    return n1 * n2;
}
-(int) divideInt: (int) n1 over: (int) n2 {
    if (n2 == 0) {
        return 0;
    }
    return n1 / n2;
}

-(double) sumDouble: (double) n1 over: (double) n2 {
    return n1 + n2;
}
-(double) substractDouble: (double) n1 over: (double) n2 {
    return n1 - n2;
}
-(double) multiplyDouble: (double) n1 over: (double) n2 {
    return n1 * n2;
}

-(double) divideDouble: (double) n1 over: (double) n2 {
    if(n2 == 0) {
        return 0;
    }
    return n1 / n2;
}

@end

int main() {
    @autoreleasepool {
        Calculator *calculator = [[Calculator alloc] init];
        
        NSLog(@"\nSum is %i", [calculator sumInt: 3 over: 5]);
        NSLog(@"\nSubstract is %i", [calculator substractInt: 4 over: 5]);
        NSLog(@"\nProduct is %i", [calculator multiplyInt: 4 over: 5]);
        NSLog(@"\nDivision is %i", [calculator divideInt: 4 over: 5]);
        
        NSLog(@"\nSum is %f", [calculator sumDouble: 3.5 over: 5.4]);
        NSLog(@"\nSubstract is %f", [calculator substractDouble: 3.5 over: 5.4]);
        NSLog(@"\nProduct is %f", [calculator multiplyDouble: 3.5 over: 5.4]);
        NSLog(@"\nDivision is %f", [calculator divideDouble: 3.5 over: 5.4]);
        
    }
    return 0; 
}
