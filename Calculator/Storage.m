//
//  Storage.m
//  Calculator
//
//  Created by Peter Yo on 8月/6/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import "Storage.h"

@interface Storage()

@property (nonatomic) NSMutableDictionary *contactInfo;

@end


@implementation Storage

-(instancetype) init;
{
    self = [super init];
    if (self) {
        _contactInfo = [NSMutableDictionary new];
    }
    return  self;
}

-(void)saveContact:(NSString *)name phoneNumber:(NSString *)number {
    self.contactInfo[name] = number;
}

-(NSDictionary*)loadContactList {
    return self.contactInfo;
}

-(NSDictionary*) loadOnePerson:(NSString*)name {
    NSString * phoneNumber = [self.contactInfo objectForKey:name];
    NSDictionary * result = @{name : phoneNumber};
    return result;
}

@end






