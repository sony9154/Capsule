//
//  Storage.m
//  Calculator
//
//  Created by Peter Yo on 8月/6/16.
//  Copyright © 2016年 Peter Hsu. All rights reserved.
//

#import "Storage.h"

@interface Storage()

@property (nonatomic) NSMutableArray *contactInfo;

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

/*
-(void)addContactWithName:(NSString *)name phoneNumber:(NSString *)number {
    self.contactInfo[name] = number;
}*/

/*-(void) addContactWithName:(NSString*)name phoneNumber:(NSString*)number email:(NSString *)email {
    
    NSArray * personInfo = @[name,number,email];
    [self.contactInfo addObject:personInfo];
    
}*/

-(void) addContactWithContact:(YOContact *)contact {
    [self.contactInfo addObject:contact];
}

/*-(NSArray*) contacts {
    return self.contactInfo;
}*/

-(NSArray<YOContact *> *) contacts {
    return self.contactInfo;
}

/*-(NSArray*) contactFromName:(NSString*)name {
    
    for (NSArray * array in self.contactInfo) {
        if([array[0] isEqualToString:name]) {
            return array;
        }

    }
    return nil;
}*/

-(YOContact*) contactFromName:(NSString *)name {
    for (YOContact * contact in self.contactInfo) {
        if([contact.name isEqualToString:name]) {
            return contact;
        }
        
    }
    return nil;
}

/*-(void) insertContactWithIndex:(NSInteger)index name:(NSString*)name phoneNumber:(NSString*)number email:(NSString *)email {
    
    NSArray * personInfo = @[name,number,email];
    [self.contactInfo insertObject:personInfo atIndex:index];
    
}*/

-(void) insertContactWithIndex:(NSInteger)index contact:(YOContact *)contact {
    
    [self.contactInfo insertObject:contact atIndex:index];
}


-(void) removeContactWithIndex:(NSInteger)index {
    [self.contactInfo removeObjectAtIndex:index];
}


@end









