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
#import "HSUHttpRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // TODO : Do this!
    YOContact * contact = [[YOContact alloc]initWithName:@"hoge" phone:@"1234" email:@"hoge@com"];
    YOContact * contact2 = [[YOContact alloc]initWithName:@"fuga" phone:@"5678" email:@"fuga@com"];
    Storage *storage = [Storage new];
    [storage addContactWithContact:contact];
    [storage addContactWithContact:contact2];
    NSArray * contacts = [storage contacts];
    for (YOContact * contact in contacts) {
        NSLog(@"%@ %@ %@", contact.name, contact.phoneNumber, contact.email);
    }
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
    
    HSUHttpRequest * request = [HSUHttpRequest new];
    NSURL * url = [NSURL URLWithString:@"https://www.google.com"];
    request.delegate = self; //很重要的一行！
    [request sendWithURL:url];
    [self httpRequestDidGetData:request];
}

- (void)httpRequestDidGetData:(HSUHttpRequest *)httpRequest {
    NSLog(@"I got data !");
    self.data = httpRequest.data;//沒47行這裡的data是nil,因為這裡是HSUHttpRequestDelegate的實作所在.
    NSLog(@"Data is %@",self.data);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end





