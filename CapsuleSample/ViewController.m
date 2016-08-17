//
//  ViewController.m
//  CapsuleSample
//
//  Created by Peter Yo on 8月/10/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import "ViewController.h"
#import "YOContact.h"
#import "Storage.h"
#import "YOParser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    YOContact *contact = [YOContact new];
//    contact.name = @"hoge";
//    contact.phoneNumber = @"1234";
//    contact.email = @"hoge@com";
    
    // TODO : Do this!
    YOContact * contact = [[YOContact alloc]initWithName:@"hoge" phone:@"1234" email:@"hoge@com"];
    YOContact * contact2 = [[YOContact alloc]initWithName:@"fuga" phone:@"5678" email:@"fuga@com"];
    
    Storage *storage = [Storage new];
    [storage addContactWithContact:contact];
    [storage addContactWithContact:contact2];
    
    NSArray *contacts = [storage contacts];
    for (YOContact *contact in contacts) {
        NSLog(@"%@ %@ %@", contact.name, contact.phoneNumber, contact.email);
    }
//    Storage *storage = [Storage new];
    YOParser * parser = [YOParser new];
    NSString * csvString = [NSString new];
    csvString = [parser loadCSV];
    NSArray * contInfo = [parser parse:csvString];
    for (YOContact * contact in contInfo) {
        [storage addContactWithContact:contact];
    }
    NSArray * arrayResult = [storage contacts];
    NSLog(@"%@",arrayResult);
    
    NSLog(@"parseToCSVstring is like %@",[parser parseToCSVstring:arrayResult]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end





