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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSInteger result = [Calculator addition:2 number:3];
    NSInteger result2 = [Calculator substraction:2 number:6];
    NSInteger result3 = [Calculator multiplication:5 number:6];
    float result4 = [Calculator division:2 number:4];
    NSLog(@"%@", @(result));
    NSLog(@"%@", @(result2));
    NSLog(@"%@", @(result3));
    NSLog(@"%@", @(result4));
    
    Storage * storage = [Storage new];
    [storage addContactWithName:@"A" phoneNumber:@"1" email:@"1@1.com"];
    [storage addContactWithName:@"B" phoneNumber:@"2" email:@"2@2.com"];
    [storage addContactWithName:@"F" phoneNumber:@"6" email:@"6@6.com"];
    [storage addContactWithName:@"C" phoneNumber:@"3" email:@"3@3.com"];
    [storage addContactWithName:@"D" phoneNumber:@"4" email:@"4@4.com"];
    [storage addContactWithName:@"E" phoneNumber:@"5" email:@"5@5.com"];
    [storage insertContactWithIndex:1 name:@"peter" phoneNumber:@"peter" email:@"peter"];
    [storage removeContactWithIndex:0];
    
    NSArray * arrayResult = [storage contacts];
    NSLog(@"%@",arrayResult);
    
    NSArray * dictResult = [storage contactFromName:@"C"];
    NSLog(@"%@",dictResult);
    
}


@end






