//
//  Calculator.h
//  Calculator
//
//  Created by Peter Yo on 8月/5/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YORect.h"

@interface Calculator : NSObject

+ (NSInteger) addition:(NSInteger)num1 number:(NSInteger)num2;
+ (NSInteger) substraction:(NSInteger)num1 number:(NSInteger)num2;
+ (NSInteger) multiplication:(NSInteger)num1 number:(NSInteger)num2;
+ (NSInteger) division:(NSInteger)num1 number:(NSInteger)num2;

+ (NSInteger) rectAdd:(YORect*)rect1 rect:(YORect*)rect2 ;
- (BOOL) isRectCovered:(YORect*)rect1 rect:(YORect*)rect2 ;

@end
