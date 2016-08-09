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
    // Do any additional setup after loading the view, typically from a nib.
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
    
    //NSString * phoneNumber = contactArray[0][1];
    //NSLog(@"%@",phoneNumber);
    
    Storage * storage = [Storage new];
    for (YOContact * contact in contInfo) {
        //[storage addContactWithName:array[0] phoneNumber:array[1] email:array[2]];
        [storage addContactWithContact:contact];
    }
    //[storage insertContactWithIndex:1 name:@"我" phoneNumber:@"2952" email:@"yahoo@com"];
    contact.name = @"I";
    contact.phoneNumber = @"2952";
    contact.email = @"yahoo@com";
    [storage insertContactWithIndex:1 contact:contact];
    [storage removeContactWithIndex:0];
    
    NSArray * arrayResult = [storage contacts];
    NSLog(@"%@",arrayResult);
    
    YOContact * contactResult = [storage contactFromName:@"Hu"];
    NSLog(@"%@",contactResult);
    
    
    /*NSArray * array = @[@(17),@(29),@(66),@(86),@(36),@(37),@(81)];
    NSMutableArray *array = [NSMutableArray new];
    [array addObjectsFromArray:@[@(17),@(29),@(66),@(86),@(36),@(37),@(81)]];
    NSMutableArray * newArray1 = [NSMutableArray new];
    
    for(NSNumber * number in array) {
        NSNumber * compareNumber = array[0];
        if (compareNumber.intValue%10 == number.intValue%10) {
            [newArray1 addObject:number];
            //[array removeObject:number];
        }
    }
    NSLog(@"%@",newArray1);
    
    for(int i=0 ; i < 7; i++) {
        if(array.count){break;}
            if([array[i]intValue]%10 == [array[i+1]intValue]%10) {
                [newArray1 addObject:array[i+1]];
                [array removeObject:array[i+1]];
                if(array.count == 0) {
                    break;
                }
            }
    }
    NSLog(@"%@",newArray1);*/
    
}





@end














