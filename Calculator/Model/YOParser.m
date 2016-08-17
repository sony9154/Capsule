//
//  YOParser.m
//  Calculator
//
//  Created by Peter Yo on 8月/8/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import "YOParser.h"
#import "YOContact.h"
@implementation YOParser

- (NSArray<YOContact*>*) parse:(NSString*) string {
    NSArray * csvArray = [string componentsSeparatedByString:@"\n"];
    NSMutableArray<YOContact*> * personInfoArray = [NSMutableArray<YOContact*> new];
    for (NSString * personInfo in csvArray) {
        NSString * personInfoString = [personInfo stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSArray * contactInfoArray = [personInfoString componentsSeparatedByString:@","];
        YOContact * contact = [YOContact new];
        contact.name = contactInfoArray[0];
        contact.phoneNumber = contactInfoArray[1];
        contact.email = contactInfoArray[2];
       [personInfoArray addObject:contact];
    }
    return personInfoArray;
}


- (NSString *) loadCSV {
    
    NSString * csvFilePath = [[NSBundle mainBundle] pathForResource:@"contacts" ofType:@"csv"];
    NSString * fileContent = [[NSString alloc] initWithContentsOfFile:csvFilePath encoding:NSUTF8StringEncoding error:nil];
    //NSLog(@"%@",fileContent);
    return fileContent;
}


- (NSString*) parseToCSVstring:(NSArray<YOContact*>*)contacts {
    
    NSMutableArray * contactsArray = [NSMutableArray new];
    NSMutableArray * resultArray = [NSMutableArray new];
    for (YOContact * contact in contacts) {
        contactsArray[0] = contact.name;
        contactsArray[1] = contact.phoneNumber;
        contactsArray[2] = contact.email;
        NSString * result = [contactsArray componentsJoinedByString:@","];
        [resultArray addObject:result];
    }
    
    NSString * result = [resultArray componentsJoinedByString:@","];

    return result;
    
}




@end







