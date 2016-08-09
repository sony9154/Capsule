//
//  YOParser.m
//  Calculator
//
//  Created by Peter Yo on 8月/8/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import "YOParser.h"

@implementation YOParser

- (NSArray*) parse:(NSString*) string {
    NSArray * csvArray = [string componentsSeparatedByString:@"\n"];
    NSMutableArray * personInfoArray = [NSMutableArray new];
    for (NSString * personInfo in csvArray) {
       [personInfoArray addObject:[[personInfo stringByReplacingOccurrencesOfString:@" " withString:@""] componentsSeparatedByString:@","]];
    }
    return personInfoArray;
}


- (NSString *) loadCSV {
    
    NSString * csvFilePath = [[NSBundle mainBundle] pathForResource:@"contacts" ofType:@"csv"];
    NSString * fileContent = [[NSString alloc] initWithContentsOfFile:csvFilePath encoding:NSUTF8StringEncoding error:nil];
    //NSLog(@"%@",fileContent);
    return fileContent;
}

@end







