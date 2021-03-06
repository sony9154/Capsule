//
//  YOParser.h
//  Calculator
//
//  Created by Peter Yo on 8月/8/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YOContact.h"

@interface YOParser : NSObject

- (NSArray *) parse:(NSString *) string ;

- (NSString *) loadCSV ;

- (NSString *) parseToCSVstring:(NSArray<YOContact *>*)contacts ;

@end