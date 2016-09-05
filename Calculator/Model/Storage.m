//
//  Storage.m
//  Calculator
//
//  Created by Peter Yo on 8月/6/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import "Storage.h"

@interface Storage()

@property (nonatomic) NSMutableArray * contactInfo;

@end


@implementation Storage

-(instancetype) init;
{
    self = [super init];
    if (self) {
        _contactInfo = [NSMutableArray new];
    }
    return  self;
}

-(void) addContactWithContact:(YOContact *)contact {
    [self.contactInfo addObject:contact];
}

-(NSArray<YOContact*> *) contacts {
    return self.contactInfo;
}

-(YOContact*) contactFromName:(NSString *)name {
    for (YOContact * contact in self.contactInfo) {
        if([contact.name isEqualToString:name]) {
            return contact;
        }
    }
    return nil;
}

-(void) insertContactWithIndex:(NSInteger)index contact:(YOContact *)contact {
    
    [self.contactInfo insertObject:contact atIndex:index];
}

-(void) removeContactWithIndex:(NSInteger)index {
    [self.contactInfo removeObjectAtIndex:index];
}


@end









