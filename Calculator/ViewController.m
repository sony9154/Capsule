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
    [storage saveContact:@"Peter" phoneNumber:@"123"];
    [storage saveContact:@"Mary" phoneNumber:@"456"];
    NSDictionary * dictResult = [storage loadOnePerson:@"Mary"];
    NSLog(@"%@",dictResult);
    NSDictionary * arrayResult = [storage loadContactList];
    NSLog(@"%@",arrayResult);
    
}


@end






