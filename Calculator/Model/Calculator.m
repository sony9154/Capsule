//
//  calculator.m
//  Calculator
//
//  Created by Peter Yo on 8月/5/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import "Calculator.h"
#import "YORect.h"

@implementation Calculator

+ (NSInteger) addition:(NSInteger)num1 number:(NSInteger)num2 {
    return num1 + num2;
}

+ (NSInteger) substraction:(NSInteger)num1 number:(NSInteger)num2 {
    return num1 - num2;
}

+ (NSInteger) multiplication:(NSInteger)num1 number:(NSInteger)num2 {
    return num1 * num2;
}

+ (NSInteger) division:(NSInteger)num1 number:(NSInteger)num2 {
    return num1 / num2;
}

+ (NSInteger) rectAdd:(YORect*)rect1 rect:(YORect*)rect2 {
    if(![Calculator isRectCovered:rect1 rect:rect2]) {
    NSInteger addResult = rect1.weight * rect1.high + rect2.weight * rect2.high;
    return addResult;
    } else {
        //(rect1.weight * rect1.high + rect2.weight * rect2.high) - (rect1.weight - rect2.weight)*(rect1.high - rect2.high)
    }return 123;
}

+ (BOOL) isRectCovered:(YORect*)rect1 rect:(YORect*)rect2 {
    if(
       (rect1.x + rect1.weight) >= rect2.weight &&
       rect1.x <= (rect2.x + rect2.weight) &&
       (rect1.y + rect1.high) >= rect2.y &&
       rect1.y <= (rect2.y + rect2.high)
      )
    {
    return true;
    } else return false;
}

@end






















