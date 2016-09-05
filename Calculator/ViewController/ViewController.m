//
//  ViewController.m
//  Calculator
//
//  Created by Peter Yo on 8月/5/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
#import "Storage.h"
#import "YOParser.h"
#import "YOContact.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    YOContact * contact = [YOContact new];
    
    NSInteger result = [Calculator addition:2 number:3];
    NSInteger result2 = [Calculator substraction:2 number:6];
    NSInteger result3 = [Calculator multiplication:5 number:6];
    float result4 = [Calculator division:2 number:4];
    NSLog(@"%@", @(result));
    NSLog(@"%@", @(result2));
    NSLog(@"%@", @(result3));
    NSLog(@"%@", @(result4));
    
    YOParser * parser = [YOParser new];
    NSArray * contInfo = [parser parse:[parser loadCSV]];
    
    Storage * storage = [Storage new];
    for (YOContact * contact in contInfo) {
        [storage addContactWithContact:contact];
    }
    contact.name = @"I";
    contact.phoneNumber = @"2952";
    contact.email = @"yahoo@com";
    [storage insertContactWithIndex:1 contact:contact];
    
    NSArray * arrayResult = [storage contacts];
    NSLog(@"%@",arrayResult);
    
}


@end














