//
//  Rectangle.m
//  KochanTasks
//
//  Created by Araks on 1/22/17.
//  Copyright © 2017 Araks. All rights reserved.
/*  Suppose you are developing a library of routines to manipulate graphical objects. Start
    by defining a new class called Rectangle. For now, just keep track of the rectangle’s width and height. Develop methods to set the rectangle’s width and height, retrieve these values, and calculate the rectangle’s area and perimeter. Assume that these rectangle objects describe rectangles on an integral grid, such as a computer screen. In that case, assume that the width and height of the rectangle are integer values.
Here is the @interface section for the Rectangle class:
@interface Rectangle: NSObject -(void) setWidth: (int) w; -(void) setHeight: (int) h; -(int) width;
-(int) height; -(int) area; -(int) perimeter; @end
Write the implementation section and a test program to test your new class and methods.
*/

#import <Foundation/Foundation.h>
@interface Rectangle: NSObject

-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimter;

@end

@implementation Rectangle
    int width, height;
    -(void) setWidth: (int) w {
        width = w;
    }
    -(void) setHeight: (int) h{
        height = h;
    }
    -(int) width {
        return width;
    }
    -(int) height {
        return height;
    }
    -(int) area {
        return width * height;
    }
    -(int) perimter {
        return 2 * (width + height);
    }

@end
